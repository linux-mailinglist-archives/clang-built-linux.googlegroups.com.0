Return-Path: <clang-built-linux+bncBCCMH5WKTMGRBB7Q4PZQKGQEKBXGV3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 5605618FC1E
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 18:55:20 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id y17sf4771080lfh.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 10:55:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584986119; cv=pass;
        d=google.com; s=arc-20160816;
        b=lexl/q6rW7qjVgGteT8bErmmHHFP4XBOypEvrLrrPu0evhtiX+2k964/VV+Y0mybYd
         N4r1zF1C8A12pbWiUWlAL7FOoK2vCs21Kae1K5hsViUjJcD5oJVeljvL32n5sImtobVH
         m9MrjzBVnoLfCt6sK/B0y9QyNqTQAjpH46jA5PjP2zDkDHtRduNSPh4H6HjHvZWTDll2
         XRGbBVFNnlg1KJCWP54Rs/CEe1FWVd+L11eIfKPc9FR9Rf2WbgJsFPfUQUFslLhhDHqB
         5yjcO1ecFFC9ED/s479wSuRXGNvDuU7oW1xC6SgGfXu1UZU9Y86I8TJxriX5sG/HiBRc
         yjUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+PWkT+jzewRHxpFBWfAD3Jn+mtPN4gIAz/y98AjncjM=;
        b=O834CkLMWDkhJoVIzQZoMAsf9WzXkRBjqItWVCZPgDTv6gioBRErpFB2qBFrIhbNgA
         XfY0V0X1TPDdO2lzTaX6AHgfvOowQ4tCFryomeGHXlyJeHTfFkj3g3RPIurbg1EeIFjP
         /85xIhuo91+lMk/NossaVon1gyXh9TDZp7gsGISguhtzmnZhnmT8ALwHucOMgtmh+N51
         D9yt4ebgl5jF+EoM9OZtjXGy2NH/CPhc6a/6cpRCU2ulv8U8PHyqCHI5lcmTPEuen7PH
         5utRCkechqYCPQwd/pAh1I0RJx7SHl/oV+TAZvq9gSJ92zaGUk0dnOsn5CgA4CtcoSK4
         ZMKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LRurrVu3;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+PWkT+jzewRHxpFBWfAD3Jn+mtPN4gIAz/y98AjncjM=;
        b=rehzOQlz+E+khAxr0czzqHa/eMMI54BGV8oUQOp1eVKk0rsTOpl0r2DHa9Wopb14AM
         cW4UxHvSEGPHH8aFQtxbgh4GxKA/fZkWt/XW3DvIOnW8isiJJs0T88w5H9OCkgAFBhHX
         NVyBYOQcP07TBAl3NK1M98UVDjBLmkoqR5eH/EkKJfioT42H1r0HtdehCi/vasA2SBPf
         P8aFTyOUqSieAPqV51o/MwwYWfkbpvovvA/S7hH/T4MtXb2YdZTO3eHzjTNDuqRBw5K6
         5MveRVCm26zDzOGhULIZ/VSskoNGLLDutkrbO5u7sRwn25Wvm4VV/hgmvj+csa6UsIPh
         uOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+PWkT+jzewRHxpFBWfAD3Jn+mtPN4gIAz/y98AjncjM=;
        b=Bq7YTCPeNA6DlL3Bpof5/rw4oMaNjDuEMtL0fDoXePQLvYB54/wn4MSSWiS2MmU0cr
         YnPo5IJYmevgdr66zWj77pNGPjeFLFnefL46mq6VZOUvlSDh/pR0W8NigHWv8bWRsc4x
         y/RD7KaNPqR7+nawJCBuDbw/vvh11XbSrzmqPU0eRNn2coLq/frLV0GUGlCmw4ruW61r
         mLX8N6ei6Acj5sh2DUbqL7OwsB98zra4FkOqfy2hOhfuoQHEg42Uh02BiQQOZzi6HmhE
         vak23djhWa5Jqq9z+EQIrYK/xsVWKQ+CJTqs+Vcs40IsWp1dfuYOLJQ0OoKz/7Ql3Vpt
         6xnQ==
X-Gm-Message-State: ANhLgQ1/hPjKsTo2asjstK/igg+hE2xV7oHb7HfTybGYkplC47iW4rjE
	ytwRQuHUeCPkLRQCedAqTDs=
X-Google-Smtp-Source: ADFU+vvynGaKN6biyw/y0H/n0Q+u5coO1ibi/pBD/P9gizVNc8NPOxxwYoxs+CqCV/7eiIu6HgnWKA==
X-Received: by 2002:a2e:240e:: with SMTP id k14mr14388307ljk.228.1584986119713;
        Mon, 23 Mar 2020 10:55:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9099:: with SMTP id l25ls870784ljg.7.gmail; Mon, 23 Mar
 2020 10:55:19 -0700 (PDT)
X-Received: by 2002:a05:651c:515:: with SMTP id o21mr15025822ljp.91.1584986119067;
        Mon, 23 Mar 2020 10:55:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584986119; cv=none;
        d=google.com; s=arc-20160816;
        b=yNvr6/8547IRP5KbnEVLZG0Vm6JvcBgksHpc1O/D7yI3LajQukz+ANOJTh1nj8Rmm1
         rLXEPhKovDPf6UzevDnv7AsEBoHXwAchbexsjcH5Q2Je0J/T/ojAgH8Lg+yVkB60qNjV
         r6O6lF45f6rSYViIFrnmo7R9FJXEbkqfwqbjJ5jm6ulvJxwlOBc6jLw96X+5t2lJDBMq
         d9eZF9R/ZBFbQciUYhUCXHqOKFHfFa/MxzgdERqZSJHWDSGN2ueobumQalnBzjgQipu5
         EuqK7mVsTLiiovltbMmahXOype6wWiCiRPPGy0uoUbOy60U11BqfAQ7jcZTZBdBYEyPB
         JQUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+XjXArON/nteRXhEm+avg+BQR0G/+8Zsnf7Y6LGWsQw=;
        b=RmIvSv9Jw8/FlT+vQh5++jDJZleqE5lpPjUs2suohh8GPyd2TTiI/LK4bbfJ1HUJlf
         INysEpriuW3J/KMIV4RxCCzUzqvhZPeT8rZiwrqeIehlWXm24iUGRrRVT1FG/PAP9vY9
         RMD1oLwDZLQ6vh3KBTQAnQmzCEYqnxaf5k7qxMAIYQrxilvB5mhJT+FIS71JxBbfuhLU
         vfR8BH+Ay0cgiKIz489IMN7sCCqHUGJKKYC8yWwSz/V1uYKWk1krxlFVV1FY4RHoNfB0
         kzwtphc1G83+KjXvNsimdk5BjZrBxGOf4LbZ/T0FhepniV9XP8QDev3jWsz4p0R6tByp
         IZSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LRurrVu3;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id s17si1217965ljm.5.2020.03.23.10.55.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 10:55:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id w10so18268495wrm.4
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 10:55:19 -0700 (PDT)
X-Received: by 2002:a05:6000:100f:: with SMTP id a15mr29680460wrx.382.1584986118163;
 Mon, 23 Mar 2020 10:55:18 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000277a0405a16bd5c9@google.com> <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
 <5058aabe-f32d-b8ef-57ed-f9c0206304c5@redhat.com> <CAG_fn=WYtSoyi63ACaz-ya=Dbi+BFU-_mADDpL6gQvDimQscmw@mail.gmail.com>
 <20200323163925.GP28711@linux.intel.com> <CAKwvOdkE8OAu=Gj4MKWwpctka6==6EtrbF3e1tvF=jS2hBB3Ow@mail.gmail.com>
 <CAKwvOdkXi1MN2Yqqoa6ghw14tQ25WYgyJkSv35-+1KRb=cmhZw@mail.gmail.com>
In-Reply-To: <CAKwvOdkXi1MN2Yqqoa6ghw14tQ25WYgyJkSv35-+1KRb=cmhZw@mail.gmail.com>
From: "'Alexander Potapenko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 18:55:07 +0100
Message-ID: <CAG_fn=WE0BmuHSxUoBJWQ9dnZ4X5ZpBqcT9rQaDE_6HAfTYKQA@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in handle_external_interrupt_irqoff
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>, Paolo Bonzini <pbonzini@redhat.com>, 
	syzbot <syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>, 
	KVM list <kvm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, "the arch/x86 maintainers" <x86@kernel.org>, 
	Sean Christopherson <sean.j.christopherson@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: glider@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LRurrVu3;       spf=pass
 (google.com: domain of glider@google.com designates 2a00:1450:4864:20::441 as
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

I've reduced the faulty test case to the following code:

=================================
a;
long b;
register unsigned long current_stack_pointer asm("rsp");
handle_external_interrupt_irqoff() {
  asm("and $0xfffffffffffffff0, %%rsp\n\tpush $%c[ss]\n\tpush "
      "%[sp]\n\tpushf\n\tpushq $%c[cs]\n\tcall *%[thunk_target]\n"
      : [ sp ] "=&r"(b), "+r" (current_stack_pointer)
      : [ thunk_target ] "rm"(a), [ ss ] "i"(3 * 8), [ cs ] "i"(2 * 8) );
}
=================================
(in fact creduce even throws away current_stack_pointer, but we
probably want to keep it to prove the point).

Clang generates the following code for it:

$ clang vmx.i -O2 -c -w -o vmx.o
$ objdump -d vmx.o
...
0000000000000000 <handle_external_interrupt_irqoff>:
   0: 8b 05 00 00 00 00    mov    0x0(%rip),%eax        # 6
<handle_external_interrupt_irqoff+0x6>
   6: 89 44 24 fc          mov    %eax,-0x4(%rsp)
   a: 48 83 e4 f0          and    $0xfffffffffffffff0,%rsp
   e: 6a 18                pushq  $0x18
  10: 50                    push   %rax
  11: 9c                    pushfq
  12: 6a 10                pushq  $0x10
  14: ff 54 24 fc          callq  *-0x4(%rsp)
  18: 48 89 05 00 00 00 00 mov    %rax,0x0(%rip)        # 1f
<handle_external_interrupt_irqoff+0x1f>
  1f: c3                    retq

The question is whether using current_stack_pointer as an output is
actually a valid way to tell the compiler it should not clobber RSP.
Intuitively it is, but explicitly adding RSP to the clobber list
sounds a bit more bulletproof.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG_fn%3DWE0BmuHSxUoBJWQ9dnZ4X5ZpBqcT9rQaDE_6HAfTYKQA%40mail.gmail.com.
