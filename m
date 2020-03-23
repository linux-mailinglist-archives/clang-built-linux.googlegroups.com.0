Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7E44TZQKGQE7HM2MXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F75018FDA8
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 20:31:11 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id b10sf10230174pls.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 12:31:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584991868; cv=pass;
        d=google.com; s=arc-20160816;
        b=s1zvaV8DYtemYrUCBQdB18aEegVheKnjmzy4zmT7AwvdUw34PQ1PUz0AJNULQga8WJ
         YZRDCb+JyS61w0A3ipbK64UL55VZoUi67051mdqGW3u9S9qAGEiU/a70Mm/aqd1/NMrm
         z9qpMj023yKMkATlVlO6HfrIpQjDh/OFQhGJ0h1qcyAI+1Vcz17wh+13DPn9oWB/UfkB
         IIu9uIziRQUnShudConKIHbuO9QuO53BC1VJCOsO5168c1G2L7MQod3FUl0x489sLpUR
         7em5h0o0no+NBUQ3ITfqhef3l+luhai6+QnW07vpkvAG3uNpnxPjIBkWcaPO1pFu7/Zv
         z2PA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RSE9Ocb1COf05IBAMB/tuy0PznakntkLz6BJ6Pshv7U=;
        b=0gtBSlt01Ljge8O6MCADWVmpRNdYZWpZ1TQAE/9D7DxCwmqXlzK9Wy7+ZWx2mMykWR
         nM8BzLyoxIYb3QZtAR5UJGFZEw5OwJ8jt0cvrlaPy7g3/twaHIBHo2Olsj8xAfAJIYR3
         Ajxe//GJ33GTim6IGRWFPaEqw5bD/x0e09dYdzcTnK7Zdp3ux/ASWzOuqPLWEXSFoYBk
         KJSz+qgpYQ/UPGdZ9nRvPw0XkHkvlY+O9n8Bsx3N+rVGvPQdBjLbQpMPthj8NTG6boKC
         +7iJiQMu+ymFzhwajL3UwRVHxoRTtZ14iBk+6+6eXkUwEPKd9HUqXe3wlVcIYRCBSTkl
         1v2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gRoKlRBy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RSE9Ocb1COf05IBAMB/tuy0PznakntkLz6BJ6Pshv7U=;
        b=UbER/IkHuTgyQapYyke3PiCH2BRmOMDfWAhrwPhzhu5T1tN4+f7mvTWzqqRsPBE0+W
         L+jNx5ovNXjesCbYpnKTYZP+F+cGAqSIoN/j7OVVSiETy25FJB1EvPdmQn1M8CjclMZj
         UX3gcytNoMCFQDUzEtC7wF7RZZZXpc5MTJY/OD3F91bXK7zcdRV0xYI0tpxKVrNCFjjQ
         4WXZkTxBNyPs0dnKqVkPLTZumI/y65nZlXHfNH42gwMQfsiywShHTFVmrF0YycsQtnA/
         UhF9j1Q31tpFoXgrqO1eUvZrax5T4nh+yg8TXpBDbP4hiMmzuGSoZ1G1WosAevUtsyi7
         KJeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RSE9Ocb1COf05IBAMB/tuy0PznakntkLz6BJ6Pshv7U=;
        b=FCn1j2AGlm9+6xxMLgKLhwNqG1qnndTNKd6EJ8vP/4I6zHE/Sf9zXVhnZucSXh6mCN
         uo0/LtHAEtitmPknjVnFra31L2bs1BPosid/k4m7Lunh1SD+nLdhzI83d8/TUVUCuhFL
         QMLy0JX3aT6sLq+24hb0gLkzwqN+dj9n0+HMUiAJHfo1oF4GmyjIhas1173bWOnAgZns
         0eRbpIIUesXBwNTjCNydofm92AKGpwetjDC8eRg9tuNRGWv8HsDzPgSawXMlTL3ej0jR
         hk81AL6ByzJVZ/bxs7Oh2qt71zvNJmyWCLabbEiyRLbLWI+1bw/8wLtYuNMXL2CAS2K+
         jD2w==
X-Gm-Message-State: ANhLgQ0otKJRMexz7TG3jIApj5HotrHD7H+SPKsfWN8ligwVAXf2Bfwh
	vS1vSbMuWkFwnIGQxCaYeWI=
X-Google-Smtp-Source: ADFU+vuarqU6yJsHcZhHDx6xJcxISu/nbdf9eidWKgdiB/V51xFRVK58m9t8O/j9x2tnfdA44ANVEw==
X-Received: by 2002:a17:90a:d103:: with SMTP id l3mr1002802pju.91.1584991868564;
        Mon, 23 Mar 2020 12:31:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff18:: with SMTP id f24ls2466777plj.0.gmail; Mon, 23
 Mar 2020 12:31:08 -0700 (PDT)
X-Received: by 2002:a17:90a:3ad0:: with SMTP id b74mr1066698pjc.58.1584991868166;
        Mon, 23 Mar 2020 12:31:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584991868; cv=none;
        d=google.com; s=arc-20160816;
        b=N59xZwweuswi0amB1uCDKYmaqHNy4tIp6oyaC/r3AvE70ExT2QYJF6+3nIgmOPnpba
         UqzPS6a3iGSKXRiatOQzomLNL0+m261X9+z/EqQDnASE0N5Ks9ZA8DbxchiYOExdC75s
         3Tn3qeb2UvzKaXrV6C6ga4RWO63YYiREJGoMJiP1dIt2C4fV0cdnOpJ33B/kooFZ2yMs
         hmx19NCnWWdQFcPkvZvXg/t7/u3iKrmRz/LI4NfMNjhuwFTfqTyK2+un4wo+qLfXAuI3
         HXlqNxCqirxNhNy1N6W9SA+IUgaYcTbFsaQAhBpyvSpSyXd4/zKgirN9c4/aNGXAIw6h
         ta+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DSiiinnDsM5Ld5HkYiOfO11ZFTG2X1EpUiB46MpxJGU=;
        b=GGixMXcKQbdPt/VHJJKsDlDviu99NvD9CeCLcb/dJjWUP2el0IAoTpccpxozaRukqW
         RjXp1T5JPgEjskz2RxfrQ1NVyOwKBDh8Nsj4yFH2LYBkwf5mZU9jEZTEbs2ZgNUQhmpH
         oYovoKM7e93sifHRyLMwd/MN9Vbrc9iEY+gRNqhVT7uvuAK8e9qIII0Jzo+5RdYc44RY
         nP65erIfVe8v+5DyQwBUFvisr90hC1snDP/J7uiYhaLAM079X5Kb1eQd184fpb2FSvHV
         sChSa7wk/WU73hXtR9xRwVR+kzS+C2xXGqsm0MrfbQo1niQGExCwbHISK+KGYanv9e1f
         BInw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gRoKlRBy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y13si841160plp.0.2020.03.23.12.31.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 12:31:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id f206so7994100pfa.10
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 12:31:08 -0700 (PDT)
X-Received: by 2002:aa7:8b54:: with SMTP id i20mr25380850pfd.39.1584991867491;
 Mon, 23 Mar 2020 12:31:07 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000277a0405a16bd5c9@google.com> <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
 <5058aabe-f32d-b8ef-57ed-f9c0206304c5@redhat.com> <CAG_fn=WYtSoyi63ACaz-ya=Dbi+BFU-_mADDpL6gQvDimQscmw@mail.gmail.com>
 <20200323163925.GP28711@linux.intel.com> <CAKwvOdkE8OAu=Gj4MKWwpctka6==6EtrbF3e1tvF=jS2hBB3Ow@mail.gmail.com>
 <CAKwvOdkXi1MN2Yqqoa6ghw14tQ25WYgyJkSv35-+1KRb=cmhZw@mail.gmail.com>
 <CAG_fn=WE0BmuHSxUoBJWQ9dnZ4X5ZpBqcT9rQaDE_6HAfTYKQA@mail.gmail.com>
 <CAG_fn=Uf2dDo4K9X==wE=eL8HQMc1an8m8H18tvWd9Mkyhpskg@mail.gmail.com>
 <CAKwvOdntYiM8afOA2nX6dtLp9FWk-1E3Mc+oVRJ_Y8X-9kr81Q@mail.gmail.com> <CAKwvOdn10Ts_AU6i+7toj7NkMwK-+0yr5wTrN0XEDudBWS0sPQ@mail.gmail.com>
In-Reply-To: <CAKwvOdn10Ts_AU6i+7toj7NkMwK-+0yr5wTrN0XEDudBWS0sPQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 12:30:53 -0700
Message-ID: <CAKwvOdnwhoHe8ouao2VBo1meRd8H4EOC7Nr8hnFkbXBACWRm9w@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in handle_external_interrupt_irqoff
To: Alexander Potapenko <glider@google.com>
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
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gRoKlRBy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Mar 23, 2020 at 11:49 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> So maybe we can find why
> commit 76b043848fd2 ("x86/retpoline: Add initial retpoline support")
> added THUNK_TARGET with and without "m" constraint, and either:
> - remove "m" from THUNK_TARGET. (Maybe this doesn't compile somewhere)
> or
> - use my above recommendation locally avoiding THUNK_TARGET.  We can
> use "r" rather than "a" (what Clang would have picked) or "b (what GCC
> would have picked) to give the compilers maximal flexibility.

So I've sent a patch for the latter; my reason for not pursuing the former is:
1. I assume that the thunk target could be spilled, or a pointer, and
we'd like to keep flexibility for the general case of inline asm that
doesn't modify the stack pointer.
2. `entry` is local to `handle_external_interrupt_irqoff`; it's not
being passed in via pointer as a function parameter.
3. register pressure is irrelevant if the resulting code is incorrect.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnwhoHe8ouao2VBo1meRd8H4EOC7Nr8hnFkbXBACWRm9w%40mail.gmail.com.
