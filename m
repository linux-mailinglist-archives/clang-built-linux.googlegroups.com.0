Return-Path: <clang-built-linux+bncBCUY5FXDWACRBCFFR7WQKGQENS3KRMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 247A0D5953
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 03:42:33 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id e3sf2981504ljj.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Oct 2019 18:42:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571017352; cv=pass;
        d=google.com; s=arc-20160816;
        b=FEucWRoe9fW89ePXFkUQXDsLKPH5m0zdu7BrrV9xQRFZewyR4Rxau8smC3CUnYu+VA
         g/OD8BqGbP4DMXcrFtmwtRjONbNvrldEfu7hkgtWgIerfPpnA0tcL8wJcc/DkAZ22HCA
         Zxu/1rz60Oa9nqJZHktYvLjvem+Y656QVfH7rezED1U6K1IcFBqneM6ML41+T9qmpY03
         8aKtPQDJDEPd2uP96PIT9uS6MSmnkpota7scJuaK/yuOeCmZMsTWxPmkQ1S9Em50KbZc
         WlxvlEoZDEZXKbCgc3bBaG0n8Zqa3ahhGr5v3JwvvKIpuTqHNs7TNv1F/gp7zXAp+jU/
         T/mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=KCvnTk2crHPiYjXafUnFwRbrgoSUlyOaE3R7ja02Hwo=;
        b=hjuZpMVGoBp1vRiADbYlf2G46WxzHt1RW2E3qknwf+6q9IOL6usVb0i3BjSS7gH7Q6
         fZQuH64uyWHu3LiGgcDiDi2zohwXtH5I/XmdCulfTtqYv/HEZ5BEkDC1GQ+ID4abBgak
         gkz/T+XfeW+wGgIx3ERRggFFf7FHvELsF+a7khC26mvaSz2/s0gB/f+a1v0HibHbPrN8
         ewYKLcp4Z/rlBxboaxMcOLxuWmN2OcYSpvwVGxzjaxxwv9BaTADv+zGKzcr0DDSv2qD1
         s0eV2D5vSyNqDto7+GDpzk4TJ0qBszXLWeqkbicv8NG9k0ACjAfv9PQDvPHmal9SkyjQ
         w3Vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DqVdQrUE;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KCvnTk2crHPiYjXafUnFwRbrgoSUlyOaE3R7ja02Hwo=;
        b=aXBkMsUjUqXAhSdYhgR06nrAGWIdJZeqrRq9tB/MExRA4OY6sQzo4HPSel8+8Zpxhd
         75U08Zco8ZBz4LXFyMOKtBbJELtyXYjq2VzbFBP3GIZJ2js1TltvEqofmkxJjwLLS8Fj
         ctDsHVVRMmPKN4EvkQyuMIas+yMBIBjV6IClZqeA6shSNSOesRoAyhSCK3W29iFx5Ylx
         u935j7DV4nZFjnIjOIS7NgZJE3wxqb5DIZQ9KzTC80MwMIolwZg4lhQk3IHZwOQd5Jqz
         pVTTTdxb9oFcV2kP3E7S1r/5/pRXNxBuTxMupt9Mo31baaWl2zHQ8ajYRPVwj/SD5n5O
         HYfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KCvnTk2crHPiYjXafUnFwRbrgoSUlyOaE3R7ja02Hwo=;
        b=HUPqalx5LMtwNcQCo2D/4wwDw5HapD94FBLPcD/pF/xr34Rs0k7qVIVpm9EW8Bz6DG
         ZyJpF0HVoNlcWGl/R2FH4eruTiaX4Wx2jPdzrrK2sfXw3Zft5RnmefxwKfVK4pRuHr4E
         bV42XMcsSf6PxEWG8Nip1/0vwzG5VXeV0NDdpU/DFwy0eXfwftnxUa/S6YXp665oqCGQ
         tCEAs7vVln926hQkaIk/hTGc9wC9jmXGI3kZiCzY749bsBQMuteZ7urC0WvQpzqjqQ/q
         BRNrtGyDxJh+RCFVLjJUpy39jfyU9oveBrEXljJ2rL9rLEz6Qoo7dm3b3ZPS8vjh92kY
         sRdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KCvnTk2crHPiYjXafUnFwRbrgoSUlyOaE3R7ja02Hwo=;
        b=A7aTNmk+b4IaqsnpsdxIlXQtFyEm2C/OwA7r3VlNLDa3tN4Sj7JWAYJFXwwAus3VUG
         JQQOqS/7b0tKDFmVwhChOUFClcxgR29ysW8VGs3604F9QTMfx4QddFhKDAJmfsAXTWFA
         QudtGZugxSs8XOCd+dednK+cCx1qYjG33vFwHsPSBhjL87HyRNHbdwiJGbKto0yJyEzF
         dWumLdjgVqAAavWC8sLepDwdN6oLF/vMtOmcQpLO/aMQjDyZ8CIrHWcqFzwch+NQWmHb
         TZbCayOjft/fNpNoQLHIHLd1mSD8m6FuHXVnEMSwCKp8HKa4CU1HaiNHtaHDEFKwr35M
         e5gQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9zTi31N3+sE+w9OIHJxKkSvTnkhH8pVDRP35q38w58DMqAAIW
	y2qYvl4zYWZDU/G/Txsi/j4=
X-Google-Smtp-Source: APXvYqxWj5eIUAVlCnANMXc5T0e4zIMtr5QRwlbdJ2KrcxJSh0sbpGHGFmv/2Sc+YmWcLNvQW2AAkQ==
X-Received: by 2002:a19:ac01:: with SMTP id g1mr15755372lfc.141.1571017352646;
        Sun, 13 Oct 2019 18:42:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1043:: with SMTP id x3ls1583840ljm.14.gmail; Sun,
 13 Oct 2019 18:42:31 -0700 (PDT)
X-Received: by 2002:a2e:481a:: with SMTP id v26mr9756866lja.41.1571017351972;
        Sun, 13 Oct 2019 18:42:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571017351; cv=none;
        d=google.com; s=arc-20160816;
        b=nH8L2G59xtZm+x+0Mg2KR9vFvjk+57Ws55LRJQ5w96ojkvSdutOShRvuSyIm7uyEMv
         1VT3UmD0dfKu8jhIohIzeoBBXRJPNEBW+RXpCKR+PLXJBQ9rBkgFGfTEejxCqFu+RBGD
         2/HmmcFzeV8yn88iRX3Kr7VzRM3IpdhZ4mOq6QlzZxcAjCM/N8eGK0xZaW4KtevAElNh
         5fQGlS4y9AEUDRMJrbptpTNLOEEmpn+fHv08EsTrfPEOjnxKKU7qvpcMCteBJOyI3biU
         aIdilu5GSix65gzVieJkkfxE+GYbk8P8/LhAhOqTPBI9slJZRWb93e00DQm5yaI9ItDI
         QsOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nHlyjzln2EXA6Rl4vH3JEUJo8C8cF0ODGqTOCDMVJpc=;
        b=WhSLMP4IR2Qyg+PREys9RHPL6MTeAMHMUWx2tQzK+62KJ5rA/zUzgAYW0bW6/iW7Qa
         RRbCdwFm+o2bLDLDMR+KNBOTGTow7/FKhqd0g0JHQ/Ko7x4kNci9pHpaGDMdHBVaSxB5
         2gS0BPsI15FdFuVmxr5jiC+7H1FFWEQEsfOuQ8grYPAy/5s6Epn+zCfDSqJaSQ6XS2TR
         1+nHQBaQK9EucsJun+GVGpvQHUQl7os+gV6Np5nboLOJwoKMMmg0LuQQhkI53MuU9q5L
         HcsHJXQqmJEbD+YdkN4qPsqLLvb+/5auHLO3p5G6K4aavbvZaalOe5gVqkIfYvFoxlnl
         racQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DqVdQrUE;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id c25si465703lji.2.2019.10.13.18.42.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 18:42:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id 7so14950235ljw.7
        for <clang-built-linux@googlegroups.com>; Sun, 13 Oct 2019 18:42:31 -0700 (PDT)
X-Received: by 2002:a2e:b17b:: with SMTP id a27mr16784341ljm.243.1571017351559;
 Sun, 13 Oct 2019 18:42:31 -0700 (PDT)
MIME-Version: 1.0
References: <201910032202.OVnkgkNP%lkp@intel.com> <20191011200059.GA30072@ubuntu-m2-xlarge-x86>
In-Reply-To: <20191011200059.GA30072@ubuntu-m2-xlarge-x86>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Sun, 13 Oct 2019 18:42:20 -0700
Message-ID: <CAADnVQJA7otF=us0usjZ9x0pqpX--9UVLZhwZe-+8pVf-PMkpQ@mail.gmail.com>
Subject: Re: [ast:btf_vmlinux 1/7] net/mac80211/./trace.h:253:1: warning:
 redefinition of typedef 'btf_trace_local_only_evt' is a C11 feature
To: Nathan Chancellor <natechancellor@gmail.com>, bpf <bpf@vger.kernel.org>, 
	Andrii Nakryiko <andriin@fb.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DqVdQrUE;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Oct 11, 2019 at 1:01 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Oct 03, 2019 at 10:48:31PM +0800, kbuild test robot wrote:
> > CC: kbuild-all@01.org
> > TO: Alexei Starovoitov <ast@kernel.org>
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ast/bpf.git btf_vmlinux
> > head:   cc9b0a180111f856b93a805fdfc2fb288c41fab2
> > commit: 82b70116b6ba453e1dda06c7126e100d594b8e0a [1/7] bpf: add typecast to help vmlinux BTF generation
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 38ac6bdb83a9bb76c109901960c20d1714339891)
> > reproduce:
> >         git checkout 82b70116b6ba453e1dda06c7126e100d594b8e0a
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >    In file included from net/mac80211/trace.c:11:
> >    In file included from net/mac80211/./trace.h:2717:
> >    In file included from include/trace/define_trace.h:104:
> >    In file included from include/trace/bpf_probe.h:110:
> > >> net/mac80211/./trace.h:253:1: warning: redefinition of typedef 'btf_trace_local_only_evt' is a C11 feature [-Wtypedef-redefinition]
> >    DEFINE_EVENT(local_only_evt, drv_start,
> >    ^
> >    include/trace/bpf_probe.h:104:2: note: expanded from macro 'DEFINE_EVENT'
> >            __DEFINE_EVENT(template, call, PARAMS(proto), PARAMS(args), 0)
> >            ^
> >    include/trace/bpf_probe.h:77:16: note: expanded from macro '__DEFINE_EVENT'
> >    typedef void (*btf_trace_##template)(void *__data, proto);              \
>
> Hi Alexei,
>
> The 0day team has been running clang builds for us for a little bit and
> this one popped up. It looks like there are certain tracepoints that use
> the same template so clang warns because there are two identical
> typedefs. Is there any way to improve this so we don't get noisey
> builds? This still occurs as of your latest btf_vmlinux branch even
> though this report is from a week ago.

Thanks for headsup. That was indeed a valid bug in my branch.
Interestingly gcc didn't complain.
I knew that 0day bot is testing my development tree, but
I didn't know it's doing it with clang.
And for some reason I didn't receive any reports
about this breakage.
More so I got 'build success' email from 0day for my branch.
Something to improve in the bot, I guess.

If you're curious the fix was:
-typedef void (*btf_trace_##template)(void *__data, proto);             \
+typedef void (*btf_trace_##call)(void *__data, proto);                 \

I forced pushed my btf_vmlinux branch.
Please let me know if you still see this issue.

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQJA7otF%3Dus0usjZ9x0pqpX--9UVLZhwZe-%2B8pVf-PMkpQ%40mail.gmail.com.
