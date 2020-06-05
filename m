Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBMWB5L3AKGQEY76LPQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CD61F007E
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 21:44:51 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id p7sf8529527qkf.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 12:44:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591386290; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ur57XGwzonzfqSIXPhz+sMYrJvaD8vEq87txWifirEnVE4nXrcdmvhiFhFFzXwvQG4
         2afNkIktVKQ8qMgEdsYaYpLAUA+XEuNf5YvWKjcRM7fQ/uv4meGjiyEa7AaFjzp5f/1J
         AYSXwLtt4bLuqgoE0dl6RAa9kUcb3FU4xy88vXTNkItxX7gKySNixyyJMAwoSi4dAHqR
         +fOyb4hyE7IcwOjEgsoAJ2dmWGvc82EuFpM0o29VWarF3Stf5A4j7vEeWazUzYL8clji
         Bw0ZpJ/5pC+e22TXWG3+lIGu6BzM5giAEr+gh83jrptqN/GVwSD/q+o1dBEDI8Pj08xI
         R3xA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jauXL3xapFPNMhNhHNS787A6l3+WeY1Ag68LIitwYrk=;
        b=jnv3w7GA4zy1h7MDi3mpb+V75QcdadBH6WZuMQYesykI9JlNl61jlW3TeH/L7DPVFB
         zisPhjNehTr0xhx8/135incG0n26XIIXBdlyO910E9tdeiiJ8vaveAn8JBQw2Ot5NCur
         rRMRwNTMw29bfQyz9Kf9720N9Ib35v+qAKMAKobscmrEDXKOjY9IrVfaj5FdOYf2m4GB
         fL64J9IGVfGBjcS1idLM6IQiKSmVWxEwg7MgZflMdWl8C+1S5RLZ6lWAya/6s/K9zUPP
         /XmgW3QpSFJ4bqIQyuPaEDgEic4RhDlorcUAGeNZjMx0NttTWx6sEB2KU0c2hqpqjx0R
         CnZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DerDVX0p;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jauXL3xapFPNMhNhHNS787A6l3+WeY1Ag68LIitwYrk=;
        b=APWu8izFItOL8CEl1y4TOIpTBwS2kvnNmeKAbkHn8PuKlxFWjnHuVqZ/6ZRTXKtcQy
         KfRtEnrunVIqwqdgq/eYON2eQaASTZ7As/Y+lEFLoof4xhtQn7T0BQVMQB9e/2imyA/C
         ZKyOBuXDlViDHmsl6d8q/Co1xbloKy3zQBBHMcpw2kH+8svTMi+1OyiJe2slF6RbaqWm
         eYyq+nyQuLAY1kf2co0kbjugz1Ns67vHTtIoLW+NBLldis9VLjfKF93Ojo9KujvwQ3De
         DdQxqGcyEIbjBYhPS1MF6JAm6EKab8/XQKjutjcX+AbHVMNLymXUbHNK8zpXr8sSKSNn
         O+ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jauXL3xapFPNMhNhHNS787A6l3+WeY1Ag68LIitwYrk=;
        b=imxNceTFG8ZhGW06ugZec1F18mEDWQgjPOnlbFAU2Da6ydPcz9FtiEc7Ba+2/Cc+U1
         lr4BsHkIa3n9FkY7lhErvRAUNzA2y+G059guiaUqHpihJjwvc4G6RmEzQ+F0BYxgCZLB
         M65K6u9X+RsC3Eoyy+Dwa1aSkDQRz8MSe5inFoyZMUF1yRZnCuR39iseW/Jsgl5kb33I
         Hkp05sk9gD3gsFGmfZPEnlsnvlqcHSkSOKdM/IGTTegL4zAFa/53YrCNTpVbUKV1J/YI
         D+oAWk7nN5RJe2mQ9MORZJ0zI7AyCjWtxBNVfrd6k0XTLzqP5ylQRKnnV0M33kNFa3yT
         xzug==
X-Gm-Message-State: AOAM531ncz3DJwAYdJtW9hvCgtHcZjiwluNn57nGSwFVz/J7q5epciBN
	lTZqm0wn33uF8f9tRWlgkvc=
X-Google-Smtp-Source: ABdhPJyfmwmVuaqlXqk35rGuCZW+hOBOkSeK4bmbGFK9GCD/n0nsAT07OZPFPrIkfvV8O2nhpel7oQ==
X-Received: by 2002:a37:64ca:: with SMTP id y193mr8810384qkb.367.1591386290592;
        Fri, 05 Jun 2020 12:44:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9f89:: with SMTP id i131ls4503082qke.3.gmail; Fri, 05
 Jun 2020 12:44:50 -0700 (PDT)
X-Received: by 2002:a05:620a:2183:: with SMTP id g3mr11603298qka.254.1591386290198;
        Fri, 05 Jun 2020 12:44:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591386290; cv=none;
        d=google.com; s=arc-20160816;
        b=UD1PI3KJKvMaHg0NLvwh20O7FI57qOsdwQ/PuQJB7RhrjwAxzKBa5rmNxwU/8u7K8K
         Rc2JPg0JPuAkLNZR9kJoNn+sjkuDi+XCZEB+iaU6PyBVM/g13Kc0ek4/3HKAn0o6eKI9
         wZzm6vVjvEPk//urAuDv9i2eyWROksXtO+13K+O86XeNlRYrS9NsrrtR/TGJ6TlJqKfe
         uSPffKsH2tyPkywgCbYk3JZt69hH4seVGwpLdqth50SmhgwPH2+tJ4Bs7E0waOLHs/KR
         bwWG4GARfk8QcHp/G2ztWyIpE36wA+rTxTdgZWBW2LcDSONwS+SUdU94/v1Hl1wXEhdZ
         PEkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7oOtED1j79XHZoDIuJQhicmo2zvGV1dbgp3b1vFZQ1M=;
        b=C2eiRMz1+iIS+KIsJJEGbmS55tdNb0jIxsB9tIQZ3ODXvQKRKjzGZjmY/kHAqTBrYH
         kyMteiv3fYrD0PcpjbC4sJlNPr/7LhHwyP+/u2eIhm9upPMq7NfWFDyZQ0CeooAAEMUO
         2sr3r7yj5uNNC6p8E1N+ZiVihIRtxRsX7mUBG3ZminyNBeOyCNHpRaCPxVS3amUgneoO
         2kVkPd5ty8IrD3DnziFy/Up78cX4lf7mxfQDbvSMPIpXi60fbF7ojpRyVpYP1ZUQenXo
         OGFu0NGUPvSE0QH3/+rHYvrTSNE9BrB11JbQW9ezKkmX3eFyHDHWS98oOY/QiHNDzkwD
         UcPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DerDVX0p;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id m1si35235qki.3.2020.06.05.12.44.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 12:44:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id d67so9220393oig.6
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 12:44:50 -0700 (PDT)
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr3024784oih.70.1591386289410;
 Fri, 05 Jun 2020 12:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <202006060103.jSCpnV1g%lkp@intel.com> <CANpmjNPBxkBBnD-y9Hpvsne3o6JA0KYgyxZhbCN+kZv4CD4yWQ@mail.gmail.com>
 <CAKwvOdk5MCxi7c-ANKYRggo1rVrpxbhR_-hWo5j9F4VSaLj18w@mail.gmail.com>
In-Reply-To: <CAKwvOdk5MCxi7c-ANKYRggo1rVrpxbhR_-hWo5j9F4VSaLj18w@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Jun 2020 21:44:37 +0200
Message-ID: <CANpmjNPw55fDqXn0V=jAUaV4RGnPTN3pCHvkUzWvP_QDeF7VOA@mail.gmail.com>
Subject: Re: [linux-next:master 10774/15793] kernel/kcsan/core.c:829:1:
 warning: no previous prototype for function '__tsan_volatile_read1'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Philip Li <philip.li@intel.com>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DerDVX0p;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Fri, 5 Jun 2020 at 21:13, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Fri, Jun 5, 2020 at 10:58 AM 'Marco Elver' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > On Fri, 5 Jun 2020 at 19:42, kernel test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   af30725c132e2e5c5369b60369ff0771fde7d4ff
> > > commit: 4e23395b9e97562d12b87a330a2fca3bf10c8663 [10774/15793] kcsan: Support distinguishing volatile accesses
> > > config: x86_64-randconfig-r013-20200605 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 6dd738e2f0609f7d3313b574a1d471263d2d3ba1)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         git checkout 4e23395b9e97562d12b87a330a2fca3bf10c8663
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > >
> > > DEFINE_TSAN_READ_WRITE(4);
> > > ^
> > > kernel/kcsan/core.c:757:7: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
> > > void __tsan_read##size(void *ptr)                                                      ^
> > > <scratch space>:92:1: note: expanded from here
> > > __tsan_read4
> > > ^
> > > kernel/kcsan/core.c:776:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > > DEFINE_TSAN_READ_WRITE(4);
> > > ^
> > > static
> > > kernel/kcsan/core.c:757:2: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
> > > void __tsan_read##size(void *ptr)                                                 ^
> > > kernel/kcsan/core.c:776:1: warning: no previous prototype for function '__tsan_write4' [-Wmissing-prototypes]
> > > DEFINE_TSAN_READ_WRITE(4);
> > > ^
> > [...]
> >
> > In the case here (and for all other *SAN or compiler-based
> > instrumentation), it's clearly fine since the compiler is the one
> > emitting calls to them.

I should have probably said "the compiler is the one emitting calls
due to sanitizer instrumentation" to be clearer.

> > How is one meant to act on W=1 reports like this? The kernel seems to
> > be full of these. It seems wrong, just to shut up W=1, to start adding
> > -Wno-missing-prototypes everywhere.
>
> + Philip, because the team is probably getting asked this a lot, and
> should link to this response.
>
> `make W=1` enabled -Wmissing-prototypes via scripts/Makfile.extrawarn.
>
> Both GCC and Clang will warn for -Wmissing-prototypes when you define
> a function without a previous declaration of it, for non-static
> functions.  If the linkage is extern, and there was no previous
> declaration, then callers may have the wrong signature.  Mostly, this
> isn't a bug, which is why it's not an error. But sometimes the
> signature has changed but the callers have not been updated, which is
> an ABI breakage resulting in a bug.  Mostly this is not an issue due
> to -Wimplicit-function-declaration being on by default, which also
> helps in this case.
>
> See: https://godbolt.org/z/aYrYfS
>
> Functions with external linkage should have a forward declaration, or
> be marked static if in a .c file, or be marked static inline if in a
> header file.
>
> For this specific case, it looks like kcsan.h should forward declare
> the functions defined by DEFINE_TSAN_READ_WRITE, to avoid any ABI
> mismatch due to different call signatures between callers and callee.
> Though I can't see where the callees are; if they're only within
> kernel/kcsan/core.c, then defining them as static qualified may be
> better. (Probably not, since they're exported via EXPORT_SYMBOL).

Thanks for the explanation. And I agree in the general case this is a
fine warning.

However, the functions here should not be forward declared anywhere,
as they should *only* be emitted by the compiler due to sanitizer
instrumentation. In the case here it's "-fsanitize=thread". Same thing
for KASAN with "-fsanitize=kernel-address". Or UBSAN. None of them
should be forward declared for access by other parts of the kernel
explicitly. Forward declaring these also doesn't help prevent ABI
breakage, since it's the compiler generating the calls.

Let me rephrase my question: what is the idiomatic way to deal with
the warnings for the sanitizers, where the functions are runtime
functions only emitted by the compiler due to instrumentation? We can
add forward declarations 1 line above where they are defined, just for
the sake of shutting up the warning specifically for these functions.
I can send a patch if that's what we want.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPw55fDqXn0V%3DjAUaV4RGnPTN3pCHvkUzWvP_QDeF7VOA%40mail.gmail.com.
