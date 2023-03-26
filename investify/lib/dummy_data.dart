import 'models/property.dart';
import 'models/transaction.dart';

var DUMMY_TRANSACTIONS = [
  Transaction(
    id: "t1",
    transactionType: TransactionType.buy,
    status: TransactionStatus.successful,
    amount: 5000000.34,
    date: DateTime.now(),
  ),
  Transaction(
    id: "t2",
    transactionType: TransactionType.sell,
    status: TransactionStatus.failed,
    amount: 1000000.00,
    date: DateTime.now(),
  ),
  Transaction(
    id: "t3",
    transactionType: TransactionType.deposit,
    status: TransactionStatus.pending,
    amount: 100000.00,
    date: DateTime.now(),
  ),
  Transaction(
    id: "t4",
    transactionType: TransactionType.withdraw,
    status: TransactionStatus.successful,
    amount: 70000.00,
    date: DateTime.now(),
  ),
  Transaction(
    id: "t5",
    transactionType: TransactionType.send,
    status: TransactionStatus.successful,
    amount: 5500000.54,
    date: DateTime.now(),
  ),
  Transaction(
    id: "t6",
    transactionType: TransactionType.sell,
    status: TransactionStatus.successful,
    amount: 5500000.54,
    date: DateTime.now(),
  ),
  Transaction(
    id: "t7",
    transactionType: TransactionType.sell,
    status: TransactionStatus.successful,
    amount: 5500000.54,
    date: DateTime.now(),
  ),
  Transaction(
    id: "t8",
    transactionType: TransactionType.buy,
    status: TransactionStatus.successful,
    amount: 55000.00,
    date: DateTime.now(),
  ),
  Transaction(
    id: "t9",
    transactionType: TransactionType.send,
    status: TransactionStatus.successful,
    amount: 10000.00,
    date: DateTime.now(),
  ),
  Transaction(
    id: "t10",
    transactionType: TransactionType.buy,
    status: TransactionStatus.successful,
    amount: 553650.54,
    date: DateTime.now(),
  ),
  Transaction(
    id: "t11",
    transactionType: TransactionType.deposit,
    status: TransactionStatus.successful,
    amount: 1000000.00,
    date: DateTime.now(),
  ),
  Transaction(
    id: "t12",
    transactionType: TransactionType.buy,
    status: TransactionStatus.successful,
    amount: 3260043.54,
    date: DateTime.now(),
  ),
];

var DUMMY_PROPERTIES = [
  Property(
    id: "p1",
    title: "Wura City",
    description: "Iba Oloja, Ibeju Lekki, Lagos",
    price: 100000,
    imageUrl: "https://picsum.photos/200/300",
  ),
  Property(
    id: "p2",
    title: "Venus City",
    description: "Oreki, Ibeju Lekki, Lagos",
    price: 50000,
    imageUrl: "https://picsum.photos/200/300",
  ),
  Property(
    id: "p3",
    title: "Topaz Gardens",
    description: "Okeogun, Ibeju Lekki, Lagos",
    price: 150000,
    imageUrl: "https://picsum.photos/200/300",
  ),
  Property(
    id: "p4",
    title: "Red Topaz",
    description: "Ilamija, Ibeju Lekki, Lagos",
    price: 20000,
    imageUrl: "https://picsum.photos/200/300",
  ),
  Property(
    id: "p5",
    title: "Topaz Gardens",
    description: "Okeogun, Ibeju Lekki, Lagos",
    price: 100000,
    imageUrl: "https://picsum.photos/200/300",
  ),
];
