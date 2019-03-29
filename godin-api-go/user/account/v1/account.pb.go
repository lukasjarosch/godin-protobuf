// Code generated by protoc-gen-go. DO NOT EDIT.
// source: godin/user/account/v1/account.proto

package accountv1

import (
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	timestamp "github.com/golang/protobuf/ptypes/timestamp"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

// Account is the central user element. Everything belongs to one account.
type Account struct {
	Id                   string               `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Email                string               `protobuf:"bytes,2,opt,name=email,proto3" json:"email,omitempty"`
	CreatedTime          *timestamp.Timestamp `protobuf:"bytes,3,opt,name=created_time,json=createdTime,proto3" json:"created_time,omitempty"`
	XXX_NoUnkeyedLiteral struct{}             `json:"-"`
	XXX_unrecognized     []byte               `json:"-"`
	XXX_sizecache        int32                `json:"-"`
}

func (m *Account) Reset()         { *m = Account{} }
func (m *Account) String() string { return proto.CompactTextString(m) }
func (*Account) ProtoMessage()    {}
func (*Account) Descriptor() ([]byte, []int) {
	return fileDescriptor_6cd4500df26f0829, []int{0}
}

func (m *Account) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_Account.Unmarshal(m, b)
}
func (m *Account) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_Account.Marshal(b, m, deterministic)
}
func (m *Account) XXX_Merge(src proto.Message) {
	xxx_messageInfo_Account.Merge(m, src)
}
func (m *Account) XXX_Size() int {
	return xxx_messageInfo_Account.Size(m)
}
func (m *Account) XXX_DiscardUnknown() {
	xxx_messageInfo_Account.DiscardUnknown(m)
}

var xxx_messageInfo_Account proto.InternalMessageInfo

func (m *Account) GetId() string {
	if m != nil {
		return m.Id
	}
	return ""
}

func (m *Account) GetEmail() string {
	if m != nil {
		return m.Email
	}
	return ""
}

func (m *Account) GetCreatedTime() *timestamp.Timestamp {
	if m != nil {
		return m.CreatedTime
	}
	return nil
}

func init() {
	proto.RegisterType((*Account)(nil), "godin.user.account.v1.Account")
}

func init() {
	proto.RegisterFile("godin/user/account/v1/account.proto", fileDescriptor_6cd4500df26f0829)
}

var fileDescriptor_6cd4500df26f0829 = []byte{
	// 232 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0x52, 0x4e, 0xcf, 0x4f, 0xc9,
	0xcc, 0xd3, 0x2f, 0x2d, 0x4e, 0x2d, 0xd2, 0x4f, 0x4c, 0x4e, 0xce, 0x2f, 0xcd, 0x2b, 0xd1, 0x2f,
	0x33, 0x84, 0x31, 0xf5, 0x0a, 0x8a, 0xf2, 0x4b, 0xf2, 0x85, 0x44, 0xc1, 0x8a, 0xf4, 0x40, 0x8a,
	0xf4, 0x60, 0x32, 0x65, 0x86, 0x52, 0xf2, 0xe9, 0xf9, 0xf9, 0xe9, 0x39, 0xa9, 0xfa, 0x60, 0x45,
	0x49, 0xa5, 0x69, 0xfa, 0x25, 0x99, 0xb9, 0xa9, 0xc5, 0x25, 0x89, 0xb9, 0x05, 0x10, 0x7d, 0x4a,
	0x79, 0x5c, 0xec, 0x8e, 0x10, 0xe5, 0x42, 0x7c, 0x5c, 0x4c, 0x99, 0x29, 0x12, 0x8c, 0x0a, 0x8c,
	0x1a, 0x9c, 0x41, 0x4c, 0x99, 0x29, 0x42, 0x22, 0x5c, 0xac, 0xa9, 0xb9, 0x89, 0x99, 0x39, 0x12,
	0x4c, 0x60, 0x21, 0x08, 0x47, 0xc8, 0x96, 0x8b, 0x27, 0xb9, 0x28, 0x35, 0xb1, 0x24, 0x35, 0x25,
	0x1e, 0x64, 0x96, 0x04, 0xb3, 0x02, 0xa3, 0x06, 0xb7, 0x91, 0x94, 0x1e, 0xc4, 0x22, 0x3d, 0x98,
	0x45, 0x7a, 0x21, 0x30, 0x8b, 0x82, 0xb8, 0xa1, 0xea, 0x41, 0x22, 0x4e, 0x39, 0x5c, 0x92, 0xc9,
	0xf9, 0xb9, 0x7a, 0x58, 0x5d, 0xeb, 0xc4, 0x03, 0x75, 0x4a, 0x00, 0xc8, 0x90, 0x00, 0xc6, 0x28,
	0x4e, 0xa8, 0x5c, 0x99, 0xe1, 0x22, 0x26, 0x66, 0xf7, 0x50, 0xc7, 0x55, 0x4c, 0xa2, 0xee, 0x60,
	0x8d, 0xa1, 0x20, 0x8d, 0x50, 0xc5, 0x7a, 0x61, 0x86, 0xa7, 0xa0, 0xe2, 0x31, 0x20, 0xf1, 0x18,
	0xa8, 0x78, 0x4c, 0x98, 0x61, 0x12, 0x1b, 0xd8, 0x39, 0xc6, 0x80, 0x00, 0x00, 0x00, 0xff, 0xff,
	0x3a, 0x4e, 0xe3, 0x9d, 0x43, 0x01, 0x00, 0x00,
}