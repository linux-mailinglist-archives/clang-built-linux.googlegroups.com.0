Return-Path: <clang-built-linux+bncBDRZHGH43YJRBEUHQPWQKGQERR3HQXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A0FD4718
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 20:01:54 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id m17sf2079583lfl.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 11:01:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570816914; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jj3nwmeYEkHiILfVN0//5Pl6oGzhHQhz/yBdpp5RLiQLhUjFu56XaTrZ6q1zfXiG8q
         HSI9XctJS8fewnTj70ZtKIpR8TfsCZJfTP3AYasjhiyDawoZh1bOL1oHWUsTOZizk6gC
         kQ3uH2OvV/46EpfNLIfVwc3rgLNfa1ZupVN0WZgpoThQ9ETpCOV8PoXl0C1viHo4g9/9
         lFlQj8rePRVJQeJevfCclH262q5OyeG/MwgaiWPjy+aCBi0XY9k4u7kPuN8ERvFy6pJQ
         OzHuM1v8Y4z/5U9L4XHuMkWSHWFVxOkD8IHRed3lFkQZKp67NkEWfkssWGz/gAdWTpmT
         hy4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cDhW7fIAf42f4AiStKPzX+w5tFkDNcWaIslFw6YnxSs=;
        b=rDQGnHMgILGY52S6LYb7SWV5NtyHWLcbry5GxM4ZqE61huw2j4rEQ1AAqqnkxkyta5
         IGupliaC4IZNJphPUTPFZeuivH/SfDt0gTGX7oJcwWF18V032EPFRZAA7KwZPFWCWy/m
         Jp4FZEumVjg79dWk4qx9GgjEy5SlbJ2oeSVIT+FEthRvqpjnf0N7ohqonWB8YtQTY5Wg
         6rqUsTvyAa+hGhDSQwqfr7GK8kBgyg8iVv5kL6UTnZVYUZPrFwmxQCLhF1u/Q4VvDcYd
         ie90sMAe+Uds2OwudjDrMXvNivo4cp0rfDku+OYZFCbTHWLvWaWZ/t0YSz9OD2P6pvwV
         atPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JJwL/lGc";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cDhW7fIAf42f4AiStKPzX+w5tFkDNcWaIslFw6YnxSs=;
        b=kXWp3sRB7AkPk41lUqkswp/EXwAqne8UhdGu4rusRxzYNQcjadbOVMjNBW/FupWGF3
         Sw0nvULhIwUm7sLnO1q6TvLTBjHnPdUsMKEzpsi/nJTjXsZRcwaDpOyYX2GYWJq2kgPt
         fknlqxlWGbZ08SYD0vyTB1T0LGTcFJGcTeYBUmF6wqdhNgzRp+A2jqd8rN6UR+msYxim
         vnIAlVhZWzcv9YZ+7PCFAekTPSTiIXEXbioErK5lMIL/vf4ffqDd8lE0I2lP83D/MS20
         CRsYuJSMzNuFnmblZQoQvT0PxFN1XwoR+4N7tw0lJTVu/TLFQkHsLo+9tkwGbVeF0PFM
         v63g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cDhW7fIAf42f4AiStKPzX+w5tFkDNcWaIslFw6YnxSs=;
        b=XI28hCIYLs/gS04C2Pnl6oFbEKfPSsW2XxJFxzHdG93XEHjdPJbM6qSVmVpdObHulE
         BHRFHwwIipgxBjVOVgZy79U9DI24nXOntirPE7c4KDcaqZnq5OouSXeR1IOYXFUFCPHv
         lVMJB/uRJ70+zpXUlPiAdhcskYF9iL2xXvrld81j1lba42/p426OZazMVuh1ZPYmCWgi
         NXFyXsWGlCHTuADlME72/vDjQ2BDPKvPjC2D0cgkqIw5v/hHy3m3P3VfnTu52BZhnohN
         qwVYn331ISNeOz7YCTg6lr8I5ckeOkNtUFsVra9ss1Spdisfesfq+5EizlRseZgznviV
         oUvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cDhW7fIAf42f4AiStKPzX+w5tFkDNcWaIslFw6YnxSs=;
        b=ouy+U6tNrbGs41I5j7v6RiYszqG3We3nHqqIlSPsINMgjUqhaUALHGtk5K2Gmcd6FJ
         Untk3VzK8SOHpO3UqKa7E7f/+e67vs3I2O9UJa3CoTjNKiTMC9it/1w4ILGNFjoOoJD7
         QuT1Dyy5U8axDGZLo12ngAupN1tEwDbG5ed4uPbgZ44WZsKQ3fiQJ6TaJgi8fgIVFdXd
         f15siUyCyVnBEnCCKwWR02fVpk+ia0JQ+Q/184YKJ2/oNo0VS0Sn+n4Dt6REaNYoCuE+
         7ZoKcLR/sCZFG6wNHhjRUtsoo823D+7ETGar04wE9JZciebEjrzqtXWC1ryFgDJekK/7
         UE7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVPQ3/bRfityvjxUQE91STllxnSOMW7Ret+Rw1d1HVxM55+RWUN
	spClGApDSHr7dJ1ZN8363O4=
X-Google-Smtp-Source: APXvYqzfzEr3BOB7jqQHI5Yx9SzBUZpdA1egvR+vGa3mTduq2qkKQ4mzO7s1vbEvQoxRGVMV32s+GA==
X-Received: by 2002:ac2:55b4:: with SMTP id y20mr1263067lfg.173.1570816914278;
        Fri, 11 Oct 2019 11:01:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d02:: with SMTP id y2ls1094069ljc.8.gmail; Fri, 11 Oct
 2019 11:01:53 -0700 (PDT)
X-Received: by 2002:a2e:85cf:: with SMTP id h15mr10042286ljj.109.1570816913615;
        Fri, 11 Oct 2019 11:01:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570816913; cv=none;
        d=google.com; s=arc-20160816;
        b=ce7ufVZQQK2QWTa9rhipl2N7OGDitE6mb6Bsfjspi02v9hVqcHYZ1q1TSXhz5SKz6s
         /UZmiw23a+5bCfc0MkSOJbtVveJDeGlGdhxYLX2WUsMnMu9dTgFPMxnov/ENWod7FjJu
         8DunvRWQtUmA7OiIHTvBQ0nutdgp7Z7P4ek8leCn0tCj8S5YsGjpgllP27H8hzF6/MZU
         LUUx9JFLb3TutVP/pQGIWT+lbb+KzNNllyWlEDYqKvAv7gxAEEuQXsK+ErdeOcSHNE6z
         +zyV2p6DGj8mzcKAwsIFm2BO62vjF8erlWMbHrOcDVYg4xORorM4EgjM5QpjYqBB6lBn
         0X2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XdwB9h96v+QYkQDX1YxlxUnsWei52osLfl6yOYfRoHI=;
        b=MFsGpUw0YHp/F4T3ztp/fX/aTusG7bKiWKzqqX/NQAljyZyNgvGpOgLlx4r0RL7YmC
         su90DXju73kMRu5tE7aobPHVcWqJBSlo2+dXsb0WngKJMUELlqNF6UhtwWoM2UH8riwm
         iJeMVll3O6gIDubKcrn1cKuUP9c8SfL3BxoFBB0GmoB00VewN2gkQx/m5K9egnaq14Ro
         1KhtcDbR71atzXkeIGiUNPjPGGqG6GHQ7DCOGcp3crxusi5msmnJ0VGkknxUUJn5MoR6
         qUPLcltJXHUhLF/Bkdfo5tDmHFbC9QK/iXLwvUDpgs5Ztf+qg6N0zk59lgZAobSHz7a1
         /NGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JJwL/lGc";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id z4si349602lfe.4.2019.10.11.11.01.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 11:01:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id y3so10690406ljj.6
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 11:01:53 -0700 (PDT)
X-Received: by 2002:a2e:3a19:: with SMTP id h25mr10164297lja.129.1570816913446;
 Fri, 11 Oct 2019 11:01:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570292505.git.joe@perches.com> <CAHk-=whOF8heTGz5tfzYUBp_UQQzSWNJ_50M7-ECXkfFRDQWFA@mail.gmail.com>
In-Reply-To: <CAHk-=whOF8heTGz5tfzYUBp_UQQzSWNJ_50M7-ECXkfFRDQWFA@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 11 Oct 2019 20:01:42 +0200
Message-ID: <CANiq72kDNT6iPxYYNzY_eb3ddWNUEzgg48pOenEBrJXynxsvoA@mail.gmail.com>
Subject: Re: [PATCH 0/4] treewide: Add 'fallthrough' pseudo-keyword
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Joe Perches <joe@perches.com>, linux-sctp@vger.kernel.org, 
	Kees Cook <keescook@chromium.org>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Pavel Machek <pavel@ucw.cz>, 
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Kan Liang <kan.liang@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	Jiri Olsa <jolsa@redhat.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Shawn Landden <shawn@git.icu>, "the arch/x86 maintainers" <x86@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	David Miller <davem@davemloft.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>, 
	Vlad Yasevich <vyasevich@gmail.com>, Neil Horman <nhorman@tuxdriver.com>, 
	Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, Netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="JJwL/lGc";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

Hi Linus,

On Fri, Oct 11, 2019 at 6:30 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Sat, Oct 5, 2019 at 9:46 AM Joe Perches <joe@perches.com> wrote:
> >
> > Add 'fallthrough' pseudo-keyword to enable the removal of comments
> > like '/* fallthrough */'.
>
> I applied patches 1-3 to my tree just to make it easier for people to
> start doing this. Maybe some people want to do the conversion on their
> own subsystem rather than with a global script, but even if not, this
> looks better as a "prepare for the future" series and I feel that if
> we're doing the "fallthrough" thing eventually, the sooner we do the
> prepwork the better.
>
> I'm a tiny bit worried that the actual conversion is just going to
> cause lots of pain for the stable people, but I'll not worry about it
> _too_ much. If the stable people decide that it's too painful for them
> to deal with the comment vs keyword model, they may want to backport
> these three patches too.

I was waiting for a v2 series to pick it up given we had some pending changes...

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kDNT6iPxYYNzY_eb3ddWNUEzgg48pOenEBrJXynxsvoA%40mail.gmail.com.
