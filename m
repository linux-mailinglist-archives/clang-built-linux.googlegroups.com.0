Return-Path: <clang-built-linux+bncBDN5FEVB5YIRBQGM4PZQKGQEFTBROUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC5018FA0F
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:39:29 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id v10sf10275195otp.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 09:39:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584981568; cv=pass;
        d=google.com; s=arc-20160816;
        b=XIlIUxlMhV0xzF15oyqnJEOClUSMzakBEa9lYxQGmKggY9uVFAckzmbFlVXOjESUYj
         bfOJOL6TvJd9ee951VUSmalMQgTJAlz09wdlQW3BT0+70U7/a3fNx0zEpJ4z9JejXt+K
         lMpZZHGRhwcsYEQ4loYGQbjMA0Hfe3QqWG184GFZIf4WpRY43SooxhdbfncxMl6eTGo4
         jHKBI++rz17Ssyibme+P9jqJmZCLpR2V5LrjssvZrKzuMYSDk3RGFbaUtcYMw8Uay89V
         jcWD0/sRUznLT7BS3mNNJ965BeY5gaye/tZRphA6DbcVR8c6ySVqvEfGmjsaTcyAFmml
         bY/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=gMsOjC6yiSJnAxnTUb4BRrPtG6UAXNvNxiyz9/AzVN8=;
        b=pFqNaereq7WB0Wzl5TR43dJ1nsLQw2LV4bgCusQWKClMsZOVgCtru3lLgZlUIlKIhH
         5NLYRdD1x3Cx7LBgjQXwBtJwIBvLyN7SbibBuBmrO9HZQFQi1p3aRioEev1fnef/wIax
         SvG9nQxIVEGeHDgwcB6d1BPPsSrXLZ6AclA9izeCZ8c3Fujs86vY79eWTLFSDzHeiKXt
         XVew2hs2RiFG/Vgj1JeX4CAK5BsUHtN8/d6nXbSa6PlSwXd1/kRQjIEnkC8S3oV+SL6B
         5O9Vw8yZFpukB4+jkaHYFmEslGw/WBnehil+UqVldptOjmBJRZOylus25l5T+9bl0lAh
         KQ3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of sean.j.christopherson@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=sean.j.christopherson@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gMsOjC6yiSJnAxnTUb4BRrPtG6UAXNvNxiyz9/AzVN8=;
        b=IOvaGO6XLN4Q3old9p4/CcdWOGYdBs5UiC+St0NhqwHecbbdIRvaIqTHZHBj7VlPBd
         cyf/l2YFlvG9uGQLDpz2TtG92s7FfS8LJ3S6sW1+r8wij/pb/AWNO1DmZhaAT90r5H+t
         ag7lImGt6FSP53Ts1QkYyMSYDc7RajW0wmn7QQy2Xxnywyoavr1K/o8qoEFQ1i/o8mbw
         pDlBspuq3L53Ots2E2y9kz+ES1DmdWw9UHLR3W60ESQiCk4LMpqdSANgIlOVuwXfkBdm
         10reTmOE2bxJHQtu0fxkNZvUJqjMCBbruNXzOIMJIdVD8kAa1zCFVXtrMXVHrpGHwfj4
         HKCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gMsOjC6yiSJnAxnTUb4BRrPtG6UAXNvNxiyz9/AzVN8=;
        b=r6AEes+qeYfR1aVTwOqKNvA+YvwgEAFMtcGCWR90ngWoluSKqLwVj1a6gOniryI+Wt
         dZ48te52vinDUNnCzaZaDEwyeh+jfoycQwi3gh8CTXPD8qRoa8h3coEeiJXOycR9bYCa
         IAG91LCVJDhlCOGcmS5IP/xoeKjZi9kzD0jsM3hf+RkdgPHlrYgu8Xgo6fRCMn3kCODe
         qbibA9txG4hh2W4q2FVKbpOlTdh7bpGemVItGdx4EGsJQwb5Woq4RUEbaWFt1lPUgRky
         wvF/gvnqTjwDPfT6WDC617CuThNmWUio2Yja29mNgLYQt235K8CAU9AKNc80NPDi6NsQ
         qFbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3YUJdYzbfQrcSQdoV1GyG+3RDrzf5R1t7o1uGurj/vB/3DIRqt
	1P9MFJPdTEsmVkWlU2jUb6E=
X-Google-Smtp-Source: ADFU+vsmVgusC62XMCKbqqox16ALBVyS2yvJ21k72fmc4PItagkuSnlIEXh+fpMaSASRsbkF02fcVA==
X-Received: by 2002:a9d:718a:: with SMTP id o10mr8589806otj.296.1584981568193;
        Mon, 23 Mar 2020 09:39:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3089:: with SMTP id f9ls6459639ots.0.gmail; Mon, 23
 Mar 2020 09:39:27 -0700 (PDT)
X-Received: by 2002:a9d:6418:: with SMTP id h24mr18583142otl.172.1584981567837;
        Mon, 23 Mar 2020 09:39:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584981567; cv=none;
        d=google.com; s=arc-20160816;
        b=d8DGsA/EdOGeTE0tQxNX7ApRd9g8HzBdXS4FZudd61xYMKsol+GHePRPmURop6x/nI
         cwj0JNPOVTNgIXi2KNI/THAUXA6TWHSgzXHq4Q8Y3dPpg8MLwaDj29ZK0xolkVsdY1mp
         WGnpg4DbTE+THvtHfhlFq/kVlsj5lacZMISsmXwQZCAbied/2OFZsViA9dg+dyYDQ7Cd
         OOqud7x3Uce+L9OjzvP2mD3zChmal3cELn2Wns99jj6ime7rJxacQK6Qx8U336srGn3k
         nZYm0mzoD3Di7oUu8S1ofG+K2xa7Pse9tO3j8b4amJRmQmbmmCtlJaTbtsKX7KOxdpIf
         IkCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=OiPPNZD3e9FR0bRV4MMt0/wbbfVzFDj2XCO9qSP7qb0=;
        b=Cpjm+F0YaPZUgti9djNG1T9RzTRTX3e4kZF0JjHb8zQam6UFkw7xdtaWBwBgyVAK6Q
         XDVKWBbzwA9ISzcWxBMkfU8/bNMADgROPJnz6JeHbbiryry5Dc4V8ZcvQKhL1nNhAOY5
         UIpW5SxgvX2VfRK+qijNOPMV95Y8bG/Xg6texDCTDYomHTHlntUCS2H6tRmKSdJdsiGK
         xPLiUQcm5xbnv+ExFAHCDa6fpURNO2BP7RjSFqoc4MGzioMCUgRtAuRV8pkA+Cs1O+lt
         6RcJ/MfylUnkMmBBuPv4mssq694RyFYZxwIHDJHjfQ1V5PAsU81JuuCb3dzzx3EOLwJV
         w/iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sean.j.christopherson@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=sean.j.christopherson@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id e21si58884oob.1.2020.03.23.09.39.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 09:39:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sean.j.christopherson@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: lmR1Km2XEc9YYvRmjaUHfDFBSdQ0iWBgyA+jyb6mcZl5y4S+ww+myHljgrJoiMdo9R4eIm53NE
 /hkvZKfuPmwg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2020 09:39:26 -0700
IronPort-SDR: CbB0ngl3XhoDgFa+je1ygSyt/uHRvif4A2KEUIoYhgEeWnTyYSiYMqs3zRyRyuhEtk4MF8sbae
 3iVvhMFf35uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,297,1580803200"; 
   d="scan'208";a="419559426"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com) ([10.54.74.202])
  by orsmga005.jf.intel.com with ESMTP; 23 Mar 2020 09:39:25 -0700
Date: Mon, 23 Mar 2020 09:39:25 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Alexander Potapenko <glider@google.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, Dmitry Vyukov <dvyukov@google.com>,
	syzbot <syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
	KVM list <kvm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Vitaly Kuznetsov <vkuznets@redhat.com>, wanpengli@tencent.com,
	the arch/x86 maintainers <x86@kernel.org>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in
 handle_external_interrupt_irqoff
Message-ID: <20200323163925.GP28711@linux.intel.com>
References: <000000000000277a0405a16bd5c9@google.com>
 <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
 <5058aabe-f32d-b8ef-57ed-f9c0206304c5@redhat.com>
 <CAG_fn=WYtSoyi63ACaz-ya=Dbi+BFU-_mADDpL6gQvDimQscmw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAG_fn=WYtSoyi63ACaz-ya=Dbi+BFU-_mADDpL6gQvDimQscmw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Original-Sender: sean.j.christopherson@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of sean.j.christopherson@intel.com designates
 192.55.52.151 as permitted sender) smtp.mailfrom=sean.j.christopherson@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Mon, Mar 23, 2020 at 05:31:15PM +0100, Alexander Potapenko wrote:
> On Mon, Mar 23, 2020 at 9:18 AM Paolo Bonzini <pbonzini@redhat.com> wrote:
> >
> > On 22/03/20 07:59, Dmitry Vyukov wrote:
> > >
> > > The commit range is presumably
> > > fb279f4e238617417b132a550f24c1e86d922558..63849c8f410717eb2e6662f3953ff674727303e7
> > > But I don't see anything that says "it's me". The only commit that
> > > does non-trivial changes to x86/vmx seems to be "KVM: VMX: check
> > > descriptor table exits on instruction emulation":
> >
> > That seems unlikely, it's a completely different file and it would only
> > affect the outside (non-nested) environment rather than your own kernel.
> >
> > The only instance of "0x86" in the registers is in the flags:
> >
> > > RSP: 0018:ffffc90001ac7998 EFLAGS: 00010086
> > > RAX: ffffc90001ac79c8 RBX: fffffe0000000000 RCX: 0000000000040000
> > > RDX: ffffc9000e20f000 RSI: 000000000000b452 RDI: 000000000000b453
> > > RBP: 0000000000000ec0 R08: ffffffff83987523 R09: ffffffff811c7eca
> > > R10: ffff8880a4e94200 R11: 0000000000000002 R12: dffffc0000000000
> > > R13: fffffe0000000ec8 R14: ffffffff880016f0 R15: fffffe0000000ecb
> > > FS:  00007fb50e370700(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> > > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > CR2: 000000000000005c CR3: 0000000092fc7000 CR4: 00000000001426f0
> > > DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > > DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> >
> > That would suggest a miscompilation of the inline assembly, which does
> > push the flags:
> >
> > #ifdef CONFIG_X86_64
> >                 "mov %%" _ASM_SP ", %[sp]\n\t"
> >                 "and $0xfffffffffffffff0, %%" _ASM_SP "\n\t"
> >                 "push $%c[ss]\n\t"
> >                 "push %[sp]\n\t"
> > #endif
> >                 "pushf\n\t"
> >                 __ASM_SIZE(push) " $%c[cs]\n\t"
> >                 CALL_NOSPEC
> >
> >
> > It would not explain why it suddenly started to break, unless the clang
> > version also changed, but it would be easy to ascertain and fix (in
> > either KVM or clang).  Dmitry, can you send me the vmx.o and
> > kvm-intel.ko files?
> 
> On a quick glance, Clang does not miscompile this part.

Clang definitely miscompiles the asm, the indirect call operates on the
EFLAGS value, not on @entry as expected.  It looks like clang doesn't honor
ASM_CALL_CONSTRAINT, which effectively tells the compiler that %rsp is
getting clobbered, e.g. the "mov %r14,0x8(%rsp)" is loading @entry for
"callq *0x8(%rsp)", which breaks because of asm's pushes.

clang:

	kvm_before_interrupt(vcpu);

	asm volatile(
ffffffff811b798e:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
ffffffff811b7993:	48 89 e0             	mov    %rsp,%rax
ffffffff811b7996:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
ffffffff811b799a:	6a 18                	pushq  $0x18
ffffffff811b799c:	50                   	push   %rax
ffffffff811b799d:	9c                   	pushfq 
ffffffff811b799e:	6a 10                	pushq  $0x10
ffffffff811b79a0:	ff 54 24 08          	callq  *0x8(%rsp) <--------- calls the EFLAGS value
kvm_after_interrupt():


gcc:
	kvm_before_interrupt(vcpu);

	asm volatile(
ffffffff8118e17c:	48 89 e0             	mov    %rsp,%rax
ffffffff8118e17f:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
ffffffff8118e183:	6a 18                	pushq  $0x18
ffffffff8118e185:	50                   	push   %rax
ffffffff8118e186:	9c                   	pushfq 
ffffffff8118e187:	6a 10                	pushq  $0x10
ffffffff8118e189:	ff d3                	callq  *%rbx <-------- calls @entry
kvm_after_interrupt():

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323163925.GP28711%40linux.intel.com.
