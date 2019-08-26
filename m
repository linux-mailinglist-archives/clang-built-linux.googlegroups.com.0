Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBVCSDVQKGQEIRKIXOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0379D49B
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 19:04:08 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id o12sf13291637ybk.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 10:04:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566839047; cv=pass;
        d=google.com; s=arc-20160816;
        b=GTD0z0D2kutn1paIFfvT2ElhSNYiV09uVFV+kEy4zg+xyMWZ7DCpKTuC++Vc9OR2Tz
         +1cR6UeO0Dc2C5eVNN+PyP2XBIHG5GWkgASSzZw4mVnGM19i72eDkTBSthLgbVurlD40
         BnsHWZASVYwhU9RyHC20FtXDXbzBPv/BXNYr6+0U3s0YhjusV1LJsaIISXxov9SDCXIZ
         0SjcmVlm4UrTHVdzTaC97lVf5fgNsEjPvYCPkLFvJVG0oYmPxx5Eh3ggaEp4tWQcTqly
         RVqbmY+ZQ7TWCZpty62jnO4K4p9FLxE2IxBdY0wZRtFxAcx1/bxHMhmvBHaz2JRYBSG4
         ls9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JqRvmB6jMFoP5UMtoBuC32iUjldPgvKO5PwUFUS1hs8=;
        b=Fap3s5iWtmcgHR8c+gQOIubH0G6i22Dnz3Ej4wjskR2B4x37tZkp/L5XhuT3rdfFaC
         pxR519+pbSRtakJI87NVlfXolKWlDglConDSwXBUnSpO7M0InQmtg7gDlbWl37XiYDNn
         CahpTxgfCObqBrNleBbWIVgtbhyB/nDUUnYAvdvDjJnHo/0rvacrInLXty2FDiQno1US
         jb/eTrPR2evfJnxlPoel+IMx2H3yVuwQlk2yd5fJBca4bsdRktJawkDRnb/CLvc8diQc
         Ag/eoN1iRgESc5yf09IqRn1StbrKj3WBfPuKk1F8YK1QUhGxaMI2tmmt5PHdzTPXx7vv
         yq+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gK38A443;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JqRvmB6jMFoP5UMtoBuC32iUjldPgvKO5PwUFUS1hs8=;
        b=i9KNWnGedNPNhldZkyA0GORI3QiwM/bCEpK8ENt22xT0maLHaXeQHa+VJIuYqt0OZB
         WpKNqUZGUujygsdH/LM8Zghb1PkQefEkEdLUZr12BYRjVPoc/0Reg9RHY4qbv70iLSZr
         nbsb0Qm7uLioWezofTrT/UZqQSYG7V08lPLExRqVol+fWqgKKGySx2y/EWs4L++4Gat/
         UkATa1kVFML+g/9mLoIZrvyRuoBDjlg8x6l8HpK1fE0DvbVgU2BOVtHtjp/dblSQyETu
         g/IygqjZIKzkPMmzzH6PxUrWw1iHAvqQ3iKM+kCs1bZYtiQ1qIAQhIB1hWGUcYxI3Lqv
         4bVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JqRvmB6jMFoP5UMtoBuC32iUjldPgvKO5PwUFUS1hs8=;
        b=GpoR/6qfXtNT0NOD0O2Jln5ArFDzC140A0YODCPuwzYNxp3PMbh2WOojd4HL/+K1nm
         50fPtIlyzXwo4CRXKK2SvZWBJppelXpVZDLKhjyZnnXS89m8zjbruH49Yknex5X63HUd
         eL9baefbjqG3P9ie+2TMkbXp6hZngGp1foNbmuYkUyXw196fpHxc4nD4TE/j9nEagWjY
         CFoSPjhRyD8Mp70DkyRXrNxp+RLszwZRbP/Bf4ZJb3Pa1NDz1985Vax0ZJP6SxNYgJId
         v8YBGnJiB/C3NFbblkICr52DjXJoiAGWwx0Trl17ywNrzS2dde3IxLnqX1EBiC0Ogn9W
         0TmA==
X-Gm-Message-State: APjAAAWDRDJcB7pKhBMkZWaXuCrgkk30aKzGynZv6S5e8jrGpCIGjRtl
	0eaMZ58OvqiTml77IybqH6U=
X-Google-Smtp-Source: APXvYqxgHP0JNGW2UhSxaN6tFXp0ocFbM94OGtjT3dww6kB9xHcdLklFQmCw+C0hogDQBavx5pI0ag==
X-Received: by 2002:a81:6d8a:: with SMTP id i132mr13132857ywc.304.1566839046819;
        Mon, 26 Aug 2019 10:04:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8c8:: with SMTP id 191ls4725806ybi.11.gmail; Mon, 26 Aug
 2019 10:04:06 -0700 (PDT)
X-Received: by 2002:a25:9747:: with SMTP id h7mr2660926ybo.207.1566839046465;
        Mon, 26 Aug 2019 10:04:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566839046; cv=none;
        d=google.com; s=arc-20160816;
        b=RCbkoj4o0Ay2AfW9NNGrb+IHt4RLJSFq0IbQL7BVgQHYd9GEGrI3lSZtqZSAEd8r3P
         84nZNamav4MRrZDrOCSucTamt1PV+NliC4QmtntZhSINizTQ0MJGF6ywwSAasLe0cJOg
         6DPXUdHaXTNlLOwKezm7XfvBVOh3IKqH6VnrepBPfaAYgBXEVSvzicP7aIyuRU8Bfj8c
         PY5U2BHvCM/w4PvCWFsq2JOZbDaPGBWDcDli77A2mnirpEpdfJqhV5Se8nku8m2rGYOq
         8QWHqBxIQ+YFWl6RzG4f9pRMjP1qgfGwJD9QDR3TF5IHZiN15lDZ5BWX6b2tREVZEOoP
         FbzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FQr2+CCalKgDrA12cz6kTPFlEgpE4NTSJBHk84k9KlA=;
        b=OKpIpgT31cPS+VO6Ba+N3CETc2jkhOB5rj73pq7DsOIk4EBHPlhVq0QrQkvdOyAJpF
         P0yMCLy5COvmSIhdf3ojRvVGAPUyHQ7oW0oj5tI/mzR3+9aSc2Q4WZdwCXlHphwrHAo7
         vIsNeXGF8Xai02EtgxFeVtb45n0DAOKN9ieL5Jl2LcMQRCp6tL9a4YOdUYWe4tUG1fDY
         wyatsoayg86fUvfrhpzSbuxA8xOF73BEpKFXQO1LfYkPtJWirmN4zFD+vN72VBodAp/l
         eMpU03AeoY2gsKmly278phR4wfjqug+PZ1k9I3yKY7z0G8jA9j4LSlLQkgUf7kHeQch/
         lXvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gK38A443;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id o3si662289yba.5.2019.08.26.10.04.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 10:04:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id f19so10327236plr.3
        for <clang-built-linux@googlegroups.com>; Mon, 26 Aug 2019 10:04:06 -0700 (PDT)
X-Received: by 2002:a17:902:8484:: with SMTP id c4mr19844087plo.223.1566839045123;
 Mon, 26 Aug 2019 10:04:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com> <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
 <20190813170829.c3lryb6va3eopxd7@willie-the-truck> <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
 <CANiq72mGoGpx7EAVUPcGuhVkLit8sB3bR-k1XBDyeM8HBUaDZw@mail.gmail.com>
 <CANiq72nUyT-q3A9mTrYzPZ+J9Ya7Lns5MyTK7W7-7yXgFWc2xA@mail.gmail.com>
 <CANiq72nfn4zxAO63GEEoUjumC6Jwi5_jdcD_5Xzt1vZRgh52fg@mail.gmail.com>
 <20190824112542.7guulvdenm35ihs7@willie-the-truck> <CANiq72mcSniCzMzW6AX_5tG5W2edjEmZ=Rf=jo-Mw3H-9RVJqw@mail.gmail.com>
In-Reply-To: <CANiq72mcSniCzMzW6AX_5tG5W2edjEmZ=Rf=jo-Mw3H-9RVJqw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 26 Aug 2019 10:03:53 -0700
Message-ID: <CAKwvOdkhJQEwWNZSC08sg9vGjydTXrbqNqNrqfN6vbRZUsjGvA@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Josh Poimboeuf <jpoimboe@redhat.com>, Yonghong Song <yhs@fb.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Andrey Konovalov <andreyknvl@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Enrico Weigelt <info@metux.net>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, 
	Shaokun Zhang <zhangshaokun@hisilicon.com>, Alexios Zavras <alexios.zavras@intel.com>, 
	Allison Randal <allison@lohutok.net>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gK38A443;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Sat, Aug 24, 2019 at 5:48 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Sat, Aug 24, 2019 at 1:25 PM Will Deacon <will@kernel.org> wrote:
> >
> > Which bit are you pinging about? This patch (12/16) has been in -next for a
> > while and is queued in the arm64 tree for 5.4. The Oops/boot issue is
> > addressed in patch 14 which probably needs to be sent as a separate patch
> > (with a commit message) if it's targetting 5.3 and, I assume, routed via
> > somebody like akpm.
>
> I was pinging about the bit I was quoting, i.e. whether the Oops in
> the cover letter was #14 indeed. Also, since Nick said he wanted to
> get this ASAP through compiler-attributes, I assumed he wanted it to
> be in 5.3, but I have not seen the independent patch.
>
> Since he seems busy, I will write a better commit message myself and
> send it to Linus next week.

Sorry, very hectic week here last week.  I'll try to get the import
bit split off, collect the acks/reviewed-by tags, and resend a v2 of
the series this week.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkhJQEwWNZSC08sg9vGjydTXrbqNqNrqfN6vbRZUsjGvA%40mail.gmail.com.
