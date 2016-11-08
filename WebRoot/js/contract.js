// function WebMailView() {
//     var self = this;
//     self.folders = ['首页', '鲜花', '永生花', '节日推荐'];
//     self.chosenFolderId = ko.observable();
//     self.goToFolderId = function (folder)
//     { self.chosenFolderId(folder); };

// };
// ko.applyBindings(new WebMailView());
// Class to represent a row in the seat reservations grid
function GoodReservation(name, initialGood) {
    var self = this;
    self.name = name;
    self.good= ko.observable(initialGood);

    self.formattedPrice = ko.computed(function() {
        var price = self.good().price;
        return price ? "$" + price.toFixed(2) : "None";        
    });    
}

// Overall viewmodel for this screen, along with initial state
function ReservationsViewModel() {
    var self = this;

    // Non-editable catalog data - would come from the server
    self.availableGoods = [
        { goodName: "西红柿", price: 0 },
        { goodName: "鸡蛋", price: 34.95 },
        { goodName: "牛肉", price: 290 }
    ];    

    // Editable data
    self.goods = ko.observableArray([
        new GoodReservation("胡玮", self.availableGoods[0]),
        new GoodReservation("有道", self.availableGoods[0])
    ]);

    // Computed data
    self.totalSurcharge = ko.computed(function() {
       var total = 0;
       for (var i = 0; i < self.goods().length; i++)
           total += self.goods()[i].good().price;
       return total;
    });    

    // Operations
    self.addGood = function() {
        self.goods.push(new GoodReservation("", self.availableGoods[0]));
    }
    self.removeGood = function(good) { self.goods.remove(good) }
}

ko.applyBindings(new ReservationsViewModel());