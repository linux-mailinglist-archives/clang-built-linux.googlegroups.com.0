Return-Path: <clang-built-linux+bncBCCMH5WKTMGRBLGO4PZQKGQEYVGKDHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6CC18FA1F
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:43:24 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id p18sf33060wmk.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 09:43:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584981804; cv=pass;
        d=google.com; s=arc-20160816;
        b=RgRLWVinxUGRtoqb0uW5fulsKz4RuoEF2qu+9p7pclFeiamnemtZSLQyikZQU5jH5d
         +9zReE92dIOwEZ4/ONczR7Z1ZgyxLFUx8avCekHN5j+sMrRRqySoIgCa/kMNHOFe0OTk
         9+N7RUBk6knnKd5uZR6gr3v/Wa6MMTazUY9W4clbh0CsdcotzQSsdYzNCi/8OXr3uhfz
         tDmhw7U8FGKyVarJaPsybyOdfypdY2sniJsgFwkYQYLotfbJqne+iz1Adfqgj7BCSzPR
         QIZcwuSy3OcNC0q43lQ05sRI9ikndPWb6OZ+leQkrQosnl2SA92LYagcnizohBuBpRME
         hwrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EikrmJ55o99Ha6kQgftBkX5FOVvHOFpzAxvZAzmKkeY=;
        b=MJ8rqKgljDhKDhtBc1fEpMzWW28RQvKR/sYFt2MUtk/Ywxy8jAbnHR0hv/XCslUDRZ
         IIZSZpYY7eYYjQAexW21HUpG+6RyjyQ4WCVZ6WBmzcjyIbFbatSrggbOOEWELl7qvJCn
         ses4b9p8BDeEd7164mHpD13LO2VyPN+H5WmO5JpsaEc4hn3esEjdDosW9ZM3iInciAGT
         baHDvoQdGm57bUlggqw0Qiki0MrTz3rpbw5UIavO/jRHDlQY0T8oJot5OuEyOqx46K0D
         ktt6Vn1wrYaOLyYcPJF8iX5lLUyebrAEc2jj0BNba+28W6A4FgPKH0HodG7N43Cypyyi
         F8SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E2ENxM6B;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=EikrmJ55o99Ha6kQgftBkX5FOVvHOFpzAxvZAzmKkeY=;
        b=SIWG6XcDHmsTev3166klvbwULfEz2gTlijcJGArFOSOt2KR8YnghJuTaBAml/IjcfR
         hs867vVS1czrSOKlboG33pUFJBz9lxOtvG2goEUC2MDF0OmbY6d/W5b2E7UhT6SrSJmr
         kNRDYb1LsGGgFS7AnnMme70hgKGvDY3RuXZbkrslVA3iwDKl9PrhlurKWxVidqpUVMk+
         5RTFSyQZt3/Y7AIQFzTJylF0mWReaSuWX5+GH7AUugfI8nYVwL3mUlytq2+X6V+Tk+sl
         OK3FPCqirm58dsAm1HUrZq87YUcCE7SLN1zhYh+4KZk2z+mELNOy74PDLTVfZb5yt05V
         hYJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EikrmJ55o99Ha6kQgftBkX5FOVvHOFpzAxvZAzmKkeY=;
        b=iBwYZ+1xueDL+3T4bp1HBWcoP0ywvuFM7shW4247vNbBX+D+1J9DKPW44TvvKqxbWk
         25brpL1/7qihOaSBbUgMaZFG1lk7xHKCvcUHjnZUf8RVBbIglWKDYkEGRT+/VU3nJWVp
         nZ2OD233hvuyrlvtoQrnwJQ4y3LuVjYpbsrcBhXpicUfZO/QvvzQPlQAa3DutH50SeOG
         nEHuetZv0Xe+LHFX6s/wpeEmxcY3mp7xEPbtEy9VV/3ioyONEaZUesnHcKTnNEROTZkY
         optTbXY8VuB65f7yqkO2m3juv24JR3J7Kc3C15XsLI63uCi1Vo2ZeHCD9hBu1k9D6sYN
         kppw==
X-Gm-Message-State: ANhLgQ0Nx5HPTs8vCbX4mmsiLfpOOCtdFyzSEWAwAevugqwwCfPxpqwG
	NVOyU5tCz7pWXyiFDiOxtPo=
X-Google-Smtp-Source: ADFU+vsSebAfZ8gzoqcrWJ0YJsVv51OBirT6WLsUugFyjMt207MWLLL4c1ComEhfYTb6Due8Hb1JUA==
X-Received: by 2002:adf:b60f:: with SMTP id f15mr32483979wre.372.1584981804199;
        Mon, 23 Mar 2020 09:43:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls83101wmf.2.gmail; Mon, 23 Mar
 2020 09:43:23 -0700 (PDT)
X-Received: by 2002:a1c:5a43:: with SMTP id o64mr124797wmb.95.1584981803592;
        Mon, 23 Mar 2020 09:43:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584981803; cv=none;
        d=google.com; s=arc-20160816;
        b=kqHGtgUTqSYj0yHD+r35hoJlEbifIlmZoYyAhEVDvHDjCcHlYmFJN5PfMzKoN+Mdoe
         To03m+52DJRBor7HJldY0gR8E3Ue15a5wnQmgo6R1PVd4v71PTfcGoZxnhmPBZxfX66u
         o5Q2NIFT3PxJsXBFQPLDLfJXUJih9F5ITRo4WRGZq9YJLVSc7buuRLMI4mcmltfqXvmb
         iRw5LqI+zXlAb1P+C0KJcgMFCiMbJbGoPZyFIIPqTl7v15aerwpjg2P+jkVlQ8/+mpYo
         THmItj40qKsgGpAhRVtFLtmKSdVCPzq70JDklvQW0fzgVL6pRZd25lTGJpQiKMSfGuBB
         kD5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=o3gpu5Dh3IkmQ0CUfMWQNecQHinVRuCfaD2dWh59NM4=;
        b=0UTRgFgWlaWIxT7pRvLRA/zLdJmlgWaOrdQlHFfaBhd0CE+xTWioUohX+T112e8qZt
         c7xqkx91ECupNrtQ4qZ8nIUqFMGQ718Sj6vEE/kWUIL/U+Ma/DCuJJW+qolmZ9is/gd/
         Lgh9YYGw8Tc0NyEEpR47OiSZPwonq9gYkQuRJh6NXWm29k8BB85JUWZOm7GPO/j4gQdU
         LjBhNdbI85bvDfMQlclsYIpxBg5KGRZuXv+NAp66oWMQYk/1KlUEBc8tqI3T31vxXmgX
         1z+YwFmnzHiTY2hr5/U7fJoks1lWDCyHrb0zf3ciYNK5IlaMXeVoutB9e8iLXkEh3sJI
         fs5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E2ENxM6B;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id b81si2999wmc.2.2020.03.23.09.43.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 09:43:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id p10so5531296wrt.6
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 09:43:23 -0700 (PDT)
X-Received: by 2002:adf:b60f:: with SMTP id f15mr32483854wre.372.1584981803024;
 Mon, 23 Mar 2020 09:43:23 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000277a0405a16bd5c9@google.com> <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
 <5058aabe-f32d-b8ef-57ed-f9c0206304c5@redhat.com> <CAG_fn=WYtSoyi63ACaz-ya=Dbi+BFU-_mADDpL6gQvDimQscmw@mail.gmail.com>
 <20200323163925.GP28711@linux.intel.com>
In-Reply-To: <20200323163925.GP28711@linux.intel.com>
From: "'Alexander Potapenko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 17:43:11 +0100
Message-ID: <CAG_fn=VSQTxAfC_AJmAmjEwn=o5MAW+Mb7aHqXghzezzzZFCEA@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in handle_external_interrupt_irqoff
To: Sean Christopherson <sean.j.christopherson@intel.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, Dmitry Vyukov <dvyukov@google.com>, 
	syzbot <syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>, 
	KVM list <kvm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Vitaly Kuznetsov <vkuznets@redhat.com>, wanpengli@tencent.com, 
	"the arch/x86 maintainers" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: glider@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=E2ENxM6B;       spf=pass
 (google.com: domain of glider@google.com designates 2a00:1450:4864:20::443 as
 permitted sender) smtp.mailfrom=glider@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Alexander Potapenko <glider@google.com>
Reply-To: Alexander Potapenko <glider@google.com>
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

On Mon, Mar 23, 2020 at 5:39 PM Sean Christopherson
<sean.j.christopherson@intel.com> wrote:
>
> On Mon, Mar 23, 2020 at 05:31:15PM +0100, Alexander Potapenko wrote:
> > On Mon, Mar 23, 2020 at 9:18 AM Paolo Bonzini <pbonzini@redhat.com> wro=
te:
> > >
> > > On 22/03/20 07:59, Dmitry Vyukov wrote:
> > > >
> > > > The commit range is presumably
> > > > fb279f4e238617417b132a550f24c1e86d922558..63849c8f410717eb2e6662f39=
53ff674727303e7
> > > > But I don't see anything that says "it's me". The only commit that
> > > > does non-trivial changes to x86/vmx seems to be "KVM: VMX: check
> > > > descriptor table exits on instruction emulation":
> > >
> > > That seems unlikely, it's a completely different file and it would on=
ly
> > > affect the outside (non-nested) environment rather than your own kern=
el.
> > >
> > > The only instance of "0x86" in the registers is in the flags:
> > >
> > > > RSP: 0018:ffffc90001ac7998 EFLAGS: 00010086
> > > > RAX: ffffc90001ac79c8 RBX: fffffe0000000000 RCX: 0000000000040000
> > > > RDX: ffffc9000e20f000 RSI: 000000000000b452 RDI: 000000000000b453
> > > > RBP: 0000000000000ec0 R08: ffffffff83987523 R09: ffffffff811c7eca
> > > > R10: ffff8880a4e94200 R11: 0000000000000002 R12: dffffc0000000000
> > > > R13: fffffe0000000ec8 R14: ffffffff880016f0 R15: fffffe0000000ecb
> > > > FS:  00007fb50e370700(0000) GS:ffff8880ae800000(0000) knlGS:0000000=
000000000
> > > > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > > CR2: 000000000000005c CR3: 0000000092fc7000 CR4: 00000000001426f0
> > > > DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > > > DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > >
> > > That would suggest a miscompilation of the inline assembly, which doe=
s
> > > push the flags:
> > >
> > > #ifdef CONFIG_X86_64
> > >                 "mov %%" _ASM_SP ", %[sp]\n\t"
> > >                 "and $0xfffffffffffffff0, %%" _ASM_SP "\n\t"
> > >                 "push $%c[ss]\n\t"
> > >                 "push %[sp]\n\t"
> > > #endif
> > >                 "pushf\n\t"
> > >                 __ASM_SIZE(push) " $%c[cs]\n\t"
> > >                 CALL_NOSPEC
> > >
> > >
> > > It would not explain why it suddenly started to break, unless the cla=
ng
> > > version also changed, but it would be easy to ascertain and fix (in
> > > either KVM or clang).  Dmitry, can you send me the vmx.o and
> > > kvm-intel.ko files?
> >
> > On a quick glance, Clang does not miscompile this part.
>
> Clang definitely miscompiles the asm, the indirect call operates on the
> EFLAGS value, not on @entry as expected.  It looks like clang doesn't hon=
or
> ASM_CALL_CONSTRAINT, which effectively tells the compiler that %rsp is
> getting clobbered, e.g. the "mov %r14,0x8(%rsp)" is loading @entry for
> "callq *0x8(%rsp)", which breaks because of asm's pushes.

Ugh, I completely overlooked this. Right, this is something to work
this on the Clang side.


> clang:
>
>         kvm_before_interrupt(vcpu);
>
>         asm volatile(
> ffffffff811b798e:       4c 89 74 24 08          mov    %r14,0x8(%rsp)
> ffffffff811b7993:       48 89 e0                mov    %rsp,%rax
> ffffffff811b7996:       48 83 e4 f0             and    $0xfffffffffffffff=
0,%rsp
> ffffffff811b799a:       6a 18                   pushq  $0x18
> ffffffff811b799c:       50                      push   %rax
> ffffffff811b799d:       9c                      pushfq
> ffffffff811b799e:       6a 10                   pushq  $0x10
> ffffffff811b79a0:       ff 54 24 08             callq  *0x8(%rsp) <------=
--- calls the EFLAGS value
> kvm_after_interrupt():
>
>
> gcc:
>         kvm_before_interrupt(vcpu);
>
>         asm volatile(
> ffffffff8118e17c:       48 89 e0                mov    %rsp,%rax
> ffffffff8118e17f:       48 83 e4 f0             and    $0xfffffffffffffff=
0,%rsp
> ffffffff8118e183:       6a 18                   pushq  $0x18
> ffffffff8118e185:       50                      push   %rax
> ffffffff8118e186:       9c                      pushfq
> ffffffff8118e187:       6a 10                   pushq  $0x10
> ffffffff8118e189:       ff d3                   callq  *%rbx <-------- ca=
lls @entry
> kvm_after_interrupt():
>
> --
> You received this message because you are subscribed to the Google Groups=
 "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/syzkaller-bugs/20200323163925.GP28711%40linux.intel.com.



--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAG_fn%3DVSQTxAfC_AJmAmjEwn%3Do5MAW%2BMb7aHqXghzezzzZFCEA=
%40mail.gmail.com.
