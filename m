Return-Path: <clang-built-linux+bncBC2ORX645YPRBQHTQP6AKGQEXASAKOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF4B289C8B
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Oct 2020 02:01:04 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id r8sf1858259ljp.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 17:01:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602288064; cv=pass;
        d=google.com; s=arc-20160816;
        b=FGGpFeohZzhCkvKxFfaEKOEaqeqPfFLpaXnwOP4mXVYAreOmN/5epFftBH0htaK2Ol
         pqnlsg9jpIEiBiua0Awf3zpRAvzlxM+0nR+nJBANNPnmk/rIBcHVmbk7DXeUWs7jNq7u
         MxnbTqrsXE6QHtrzK9doarq31nI9bjoH6Q5GUKzg6odo4XmPMug2N9EZS5ZIzXFQAa32
         QtwH8LHcTF1AcHy3gxnW0CdD31EepD5dSgqPzHWKwLox39CV/a0GQ5TT498WNgU7iiyz
         IL3/hxg9Ia3UF/MgrAB2sHDa3k9EFrRKVOYBuHIAPNC+FqLqZJXsNst/g/gOG9l/sDHE
         xlZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fedNqAg0gJvjFATvv+1houoZ15z7xlKkFogCOJjoi5A=;
        b=GFG6zPpDI4gjB+sh+bxQ99cxEzSsEevYbiO5zOzXw8i1bUX4v9JTW3jXzshKQkJKgM
         G8jsgJOj8LXcJBgWG68uo3Z8VD9YM/ZctmwTA1XIVdQDqQTuny9KfEi+aIoywg7qV4Wx
         jGxLJvOV9vl3XJVavFzAQSnI0X/zyV7FHawEW+Z1hDj2P3OKeOxQdYjfIzs1U7+/ADwV
         m65NM0vRqjXQwOyx3RBQ8bi6/kgitcX8cO8dGoZ3ZybdT1tQvhpgaDiPEEv2KMLvy69h
         ozzIyNDLYdZVqk3TBcu+vblvENrx/OaxWQTxSNjE74R9xFjB0tUocqhcnw3Lzl3h6HrA
         KFDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mijmHtCM;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fedNqAg0gJvjFATvv+1houoZ15z7xlKkFogCOJjoi5A=;
        b=UO0pTs4Mf8otcK0ts8aKAKLKMIuOGAMW7cvcbzQpQMBYs/cbbJC7LuGBD2Qjjm+0gH
         WNAvK1amDHWCUZKPTBmiUprf9bluKNxlzXMG793Va71QiGBj06EgZB3roGVDXoKqob9Q
         7xQ1vwsjCSdJhvGYEWx9GCn6jll6E0EcjQ8POvDtOoL/CbowtS1vHD/WE3D8m4QeKhPX
         bYEVkLh2WTi3+96xQNYsl73X+m+6rJrA9GRCtyOh6xx4iXv7iOtE3/rokUq4Nw6IeIK8
         PHBF/8xJSt/ynivpYunOkwj5FZZ4H1jyU4/looyKdaWnPQqkks4pri6xFKfAwIFldQ7V
         LILA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fedNqAg0gJvjFATvv+1houoZ15z7xlKkFogCOJjoi5A=;
        b=jy4dKyBKqwh4qEJ8FtJWPNTTOuwUSgWXv603NfFnuQHJxGTCNVAnMPc91SypdcRcQ0
         +enJ26y14KSR+ZSEuDyu4+6W400V/a6H6QyxAy2+T6zD63QLgQllnXGcslb2gw4wm5Ut
         BNKwJFmRPN9s3r9UevWqJ4xEC6comPOSdd8ybFafmiZPkpGhVBosNAFJOmpZFGXZSYnX
         JrQP9HQRuNpnRf/9UZEw4cwcvyMCIkq+7riPw8cUM2ZaajL7TYOjmtCf+kuqPPrFImP7
         YkR+K+cVfUHMWh+KILmDiTf1Bgoc56Vxr8Anz4VzXv8xfyqmzabDtJHtxlc/PzaYKa82
         yK9w==
X-Gm-Message-State: AOAM530LSCIlWpMByRotDfya1v2fWr8MRkMjcb6eetHO6O1Jn+x6AQjj
	KYpAEndFndihf+PQGWZmRPY=
X-Google-Smtp-Source: ABdhPJw11/TdFEcQ2gQBMrko0mxZvp0B5AFQM12WLw5YFEcDmlfdeh9qa0Jr/1KlLGwcMM778k7yAg==
X-Received: by 2002:ac2:44bb:: with SMTP id c27mr4578616lfm.223.1602288064329;
        Fri, 09 Oct 2020 17:01:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:888a:: with SMTP id k10ls1643361lji.10.gmail; Fri, 09
 Oct 2020 17:01:03 -0700 (PDT)
X-Received: by 2002:a2e:b6d1:: with SMTP id m17mr5705975ljo.451.1602288063080;
        Fri, 09 Oct 2020 17:01:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602288063; cv=none;
        d=google.com; s=arc-20160816;
        b=c9GhfnqUCX60IvG8aIQyYJYCbvDv49kmgJCviYatYjc5YXXtGrl6vI+6zn+iJeERMg
         0+h6sLfMkPeQLZ2kpcVUpWhz9fmbVbxuzbqcDVYL2Gif6OKb/FbgFD6fWJVLaa75LWgn
         veD7XWujlF/0xwNtn3+nKP4RHGJ/28Mrt48+eKlWDNVVcHfmEJVYnlkQlJpDhlZFatso
         OyKvEH+n+vhIKyVPiKpIwrcSqFPR12GqCbZ2sledgeZuCfrCaixl71TIpMrsyxgtbJrj
         C2eNAoQMdmlkv3wkmIkX59EX0Md1v9om+cUVbUe8F0SqIn72JW+v7R6xSYprlauHg4Gy
         1glg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NyEG6unrPY9TR7tF+FNQAaLApT1kctBGIfqP3l5IFb4=;
        b=cJG+Gtlwga7tvEpMxP+q970tB4ITDjNtFUyz6oVwprsTV0pVqiURD5FmQpn7lUkIFZ
         T2jVtBVWN7a7RaE4+H/TzmRVSFGW0FX5K4QDUO77FqcQHmXJoTsra5BG204gLp/vrbvx
         siMQ5zzoCMoITbSQ9JNC1xbaiarTILwiVU6peov7q3kNGsCtvuhgygqGvXqGuFch0ymS
         N0Hdwq7IKndmcnrm1NbbftyriqEFYdsMoq0SzJHNhh+7MN6JPckcBaoL66LbK19nI7le
         28Z12b4ME0+jLJbY+/vNATDnFLJHgMnSXneReiGSMyHQmi2qkWlqTTIOOADXQMkZAYw4
         vLkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mijmHtCM;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t20si282672lfk.10.2020.10.09.17.01.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 17:01:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Received: by mail-ed1-x544.google.com with SMTP id x1so11169646eds.1
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 17:01:03 -0700 (PDT)
X-Received: by 2002:a50:dec9:: with SMTP id d9mr1852468edl.145.1602288062227;
 Fri, 09 Oct 2020 17:01:02 -0700 (PDT)
MIME-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
 <20201009153512.1546446a@gandalf.local.home> <20201009210548.GB1448445@google.com>
 <20201009193759.13043836@oasis.local.home>
In-Reply-To: <20201009193759.13043836@oasis.local.home>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 9 Oct 2020 17:00:51 -0700
Message-ID: <CABCJKueGW5UeH1++ES7ZRDcAnZ6hV-tFVwt6usjcZUnR95YQPQ@mail.gmail.com>
Subject: Re: [PATCH v5 00/29] Add support for Clang LTO
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mijmHtCM;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::544
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Oct 9, 2020 at 4:38 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Fri, 9 Oct 2020 14:05:48 -0700
> Sami Tolvanen <samitolvanen@google.com> wrote:
>
> > Ah yes, X86_DECODER_SELFTEST seems to be broken in tip/master. If you
> > prefer, I have these patches on top of mainline here:
> >
> >   https://github.com/samitolvanen/linux/tree/clang-lto
> >
> > Testing your config with LTO on this tree, it does build and boot for
> > me, although I saw a couple of new objtool warnings, and with LLVM=1,
> > one warning from llvm-objdump.
>
> Thanks, I disabled X86_DECODER_SELFTEST and it now builds.
>
> I forced the objdump mcount logic with the below patch, which produces:
>
> CONFIG_FTRACE_MCOUNT_RECORD=y
> CONFIG_FTRACE_MCOUNT_USE_OBJTOOL=y
>
> But I don't see the __mcount_loc sections being created.
>
> I applied patches 1 - 6.

Patch 6 is missing the part where we actually pass --mcount to
objtool, it's in patch 11 ("kbuild: lto: postpone objtool"). I'll fix
this in v6. In the meanwhile, please apply patches 1-11 to test the
objtool change. Do you have any thoughts about the approach otherwise?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueGW5UeH1%2B%2BES7ZRDcAnZ6hV-tFVwt6usjcZUnR95YQPQ%40mail.gmail.com.
