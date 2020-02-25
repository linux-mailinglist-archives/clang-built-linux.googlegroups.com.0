Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEUL23ZAKGQEXKADXQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C9516F036
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 21:37:39 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id g5sf273135plq.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 12:37:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582663058; cv=pass;
        d=google.com; s=arc-20160816;
        b=QArs+ttSkLkFeKUHMR9rK3PmE6PVFI+u/RJcARDPNQoPRI41sOqOZxe5u2XWC+faif
         PfGd6m44qiiHrea9MM/xi82OGPM5RfE+p6rB6aX+sgC0WW3pqaTTpbHrtcLyvaoyzBG4
         kkKplW+pbVyvJH6OefuAcpqqWM4eP/aqTiRWMvKPA8DQKRK1WAagFIM57ib7L/5p9kwC
         P2A8K2A1Kf/yL7x5bmVFtCEw01Sd0/A1PeR7tHAGXc//4S8jsQSF3TihzxatawWsdCiF
         bcI8aCmQGMKVwIAqIRmmD7FNAruSattDL3WD+MmkCaHvT5ngu+Td7xxk2ueftjMIXMOX
         Kxpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=acS7QKxdRINxzid9ix4ek9oa+ewgrMqN7mf/sEAbqCQ=;
        b=NuAy5QlmJz2FX6zUIwmBW6g6wfrhgvyaX3X/QTLzaUEcVZKdIPhwg7Mp+hz3IHPdaT
         spRo+tO+9adRU2v7o5TVbKPhOP3wjACCiu373dp7k7T/1zomzER8Qy5v3dbx8lgdxTnu
         ndrr+Wcl3byJPgebIBwCuRpT40IxXIk3BnuG0syjPk0P5kHBu3dUQ1ZFh1TIkn+04I5s
         oztsdSRJJjMTGN+SSgBjrFiarOrWYtofsmphSViH5p66jbafZAQ+5tKdp+VENrmoTWUz
         z8DjlfS4NcOZq0KY3At7O9zlz7cX6E+qzXvdZpGgkehHKchz1sBnoqc6S/xtkAnMYP8C
         bbXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LQ3s5JsG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=acS7QKxdRINxzid9ix4ek9oa+ewgrMqN7mf/sEAbqCQ=;
        b=Gq5VtQ7yjLhj0AkLN/eGSSzvdu4Om73Wv8zQcSLPJkcStdUbL6BmvumTEDWDEB6jrB
         XU7f18V5OlIY+Wm9clLzT4aa6yGJZn5fl8k7bbqW20UlxWSInrVFkn511naskYnQF9xe
         kZYnZGzjQn5v3Ds5P1Ija1qZXrjQ5mNvaN5HWMkoXotMHiyC8XCOPcPJ1PikbwPQUfWB
         hp9Tlg3+0ZwlTujk9bdresX1yoKQJrdCSaztqe+PV2TY2tuqW7K9KZOgqLMgOfiKO/tt
         YLZL2sg8qxBawGP3L+c2eBlTxk85i8VdSatyD0SU91Ri7RJnSxFBvPX+NCkWBWmSTkCP
         nvzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=acS7QKxdRINxzid9ix4ek9oa+ewgrMqN7mf/sEAbqCQ=;
        b=IAe1QJC8Xrx6Nvw9JBetgCTAJ20b+68W68Zigztk44aA0BR3K6Yme5lPl137lUmqkw
         LlpNpVScF8X4i/mftWM5TE1x0k1TjE1gaKu4CnC09pMbUBJ9J5ay9ti2FG8yiKsnmrz2
         7jcH5SdM3RIt6LWWmhUYacbTdPamiXHI2Y81SJw6q3aC2nibRa5mLEnyztt3ZZaspqRd
         nJriLmrWijlV5VZMnzYsISpyb6mXSr4bvcQO8fNX0vpS9YnBt++0+XOJX+nnVKlAozat
         KE/yxiRTPEmwtJ3WhGGcdOm9gjOvpBQ5HLQoC2lvfoDk+6/qE6heAeSzqMf6z/7Fcits
         lUUg==
X-Gm-Message-State: APjAAAVWmNqFFn8NUh3h3T9Sg7ofELVcEZGlWppn/q6vsy83VIQH/ihu
	hV4PGXK+y+NiLCqTahUrwPk=
X-Google-Smtp-Source: APXvYqz4bqoP5VL2Nkg9jYZRt2pR81brUlrEtyEnWwW3KQyacR9qoc2MSE6IEHuhtYv8NMoi/LUcGQ==
X-Received: by 2002:a63:e74f:: with SMTP id j15mr343315pgk.20.1582663058343;
        Tue, 25 Feb 2020 12:37:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8493:: with SMTP id c19ls124079plo.8.gmail; Tue, 25
 Feb 2020 12:37:38 -0800 (PST)
X-Received: by 2002:a17:90a:cb83:: with SMTP id a3mr956273pju.80.1582663057916;
        Tue, 25 Feb 2020 12:37:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582663057; cv=none;
        d=google.com; s=arc-20160816;
        b=SeXUiBLLWt2JDMsDblXNcW96NRbmeoz7j1tIoHpKIqAvZFHJ1eus1Y7Ga/o2rmowlV
         gyTipaYY64BhfO0wD7Fz5vt1TB+UaY0vQ1MCQOFGtZiNumUf85hURQECslLLHVJ4Xs2A
         FTsRQ+bd2L0ojMBs8HaspkPM/ig4XjNtDflvfnY8JmneOCcQ9i/SJUVj8DNh4JFOt6+S
         /R3prQ95pAQNsAlQpF3FxX8Qi26FCe9OXw+c+CyIIUFMD+SQXC8HJLhdeVV/t/ze0bbg
         9PiudWYRJ4vLTWRnpvN5Th4pvRz05BTpStL9tZERPIZU/pG5SfodAS0wyREdYT9UtEiy
         IjXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=v1XIiBi4oFqFORFlQSNw7k0aiV4sK296qJvfGhGJwdw=;
        b=oF5+pmL/pVq9cLvDRISZVLxrqpRef2FF2jtYllCdgRhPLKjdt9P7cmGByUefuZAP3/
         0/hXzwyo0xv3ZjENuKbLyF2m2YL7wQqsEla9wnpHMmGo1n2Z0doGbPaqjMzvFmXTWht0
         Smu0032kxPi0l1EhTAcc9z+127ipup9f/1ay+jvQALNm6+0qde/lnZ4F0yT19DwATzP5
         YWPSz558WEofrwPCr0yYzMbDFjJPV04VCTtXILeWXPexpcsqGWEeuy3JlRHbzfetkS92
         Zzg5yXu3HczBYaxCIFlEHl7HdwXJtstcch2yfCmlboTDya0o2Vn4umee66SGRA6iKCWD
         XtqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LQ3s5JsG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id m187si41816pga.3.2020.02.25.12.37.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 12:37:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Received: by mail-pl1-x633.google.com with SMTP id y1so285391plp.7
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 12:37:37 -0800 (PST)
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr955101pjk.134.1582663057319;
 Tue, 25 Feb 2020 12:37:37 -0800 (PST)
MIME-Version: 1.0
References: <20200109150218.16544-2-nivedita@alum.mit.edu> <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic> <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com> <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan> <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <202002242122.AA4D1B8@keescook> <20200225182951.GA1179890@rani.riverdale.lan> <202002251140.4F28F0A4F@keescook>
In-Reply-To: <202002251140.4F28F0A4F@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 25 Feb 2020 12:37:26 -0800
Message-ID: <CAKwvOdnkr1W4LTm8XmTKGkSDUhSBRowLbKwJwyitDMAGLh9ywg@mail.gmail.com>
Subject: Re: --orphan-handling=warn
To: Kees Cook <keescook@chromium.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Fangrui Song <maskray@google.com>, 
	Borislav Petkov <bp@alien8.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Kristen Carlson Accardi <kristen@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LQ3s5JsG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633
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

On Tue, Feb 25, 2020 at 11:43 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Tue, Feb 25, 2020 at 01:29:51PM -0500, Arvind Sankar wrote:
> > On Mon, Feb 24, 2020 at 09:35:04PM -0800, Kees Cook wrote:
> > > Note that cheating and doing the 1-to-1 mapping by handy with a 40,000
> > > entry linker script ... made ld.lld take about 15 minutes to do the
> > > final link. :(
> >
> > Out of curiosity, how long does ld.bfd take on that linker script :)
>
> A single CPU at 100% for 15 minutes. :)

I can see the implementers of linker script handling thinking "surely
no one would ever have >10k entries." Then we invented things like
-ffunction-sections, -fdata-sections, (per basic block equivalents:
https://reviews.llvm.org/D68049) and then finally FGKASLR. "640k ought
to be enough for anybody" and such.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnkr1W4LTm8XmTKGkSDUhSBRowLbKwJwyitDMAGLh9ywg%40mail.gmail.com.
