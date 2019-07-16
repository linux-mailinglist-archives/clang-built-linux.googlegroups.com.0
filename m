Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNX6XDUQKGQEQTR6WCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id E19BE6B0F2
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 23:18:47 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id i26sf13064411pfo.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 14:18:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563311926; cv=pass;
        d=google.com; s=arc-20160816;
        b=hh5gfq+wMnXOG4GTujnh9Xti7agrBheg3ylrzgjpTIsqAWmgf+Q90qfrXddD7LaeMi
         nHrqFGgNUpEfqV8vunPRuNCXJN24PdvVTYrRoAAwvqhLK16x4UBjVCQT9AGFc6OJxW3g
         rSJ1+tLvJmGkCGB3ikXRxf/x11Y8HrtsnLBvNVtVtKs2A8AMQIQBOb/cDlOKk7cov82F
         FzkCfoEbWo6/t747/PvtV3V14muxYsW4YljWoVmUM2FPoxZtfDj2an75IKrrwZ0mwSu+
         fpfhqde+HGnJizAz4AtHcvpacNthrMo4y7C/bRUs3OCItf+EZWsw76fORWelu0hTOL21
         sqjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ua8peL4gFXeW6Dk6t8XYYIaLlG/BF2dnJk3GlCXaNiQ=;
        b=tGMSwxhtj9WZ0sX/MrpgJArFA82AhocUu2HKXrmqfcaF33rWXOrZ/djuvC+qTmtJUX
         b6cMEF9GiDHedasHgSu9uksvSJAfOADPAoDk7m67KZ+3qNguoPF1sSQI/WneiFRDnmeb
         BH1zeC8y72w22IPmx2pnOlvzoPh8UPz/68WcmP0J7KZ+9cf1MC0n8Az5BcTyyzhgPW71
         6G9un/fNqviT6UpXhjDWTveoghLn9llNbXhY5GHatmm7qCG16OfcfFtg+m1bOJXVa1Ih
         wrT2nnRAsePoSYeIbF0UGyLk9mHuy9gsHK83WiHifTOnMSdM4ClejNuDbIw+iOftYmQY
         ZUxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="X9K+xYg/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ua8peL4gFXeW6Dk6t8XYYIaLlG/BF2dnJk3GlCXaNiQ=;
        b=HV50nvU8yFXv7OEPICv5rjb2RtE2pu03D8uA5eZlbp7qQObEyuw9T0hJC37b/ux5sN
         t7eGIVegrF6vY+p5kGAdeOKljUNz2IRtqy7yjlzME1BZttvzHyJB3EjGdegbqBq6uphk
         8xUksSPQNeAryVIbIDG41cv7He/p2TnLLyKkSwnL2nvI5soEwD3BiP0yVRTET6DiVsZh
         3LMn19AeYO2PnRv8QH4EjCRIEu8q2bJrPA+ippmDkPPEpB9e6gy4mo0W3e/792MBAvQ8
         SduAkDq25E/kuPQvVa0r8DTnMa7l79+Z8sISww1fsfPlA5V4EJy7DmTE7BzB7pmH6iCt
         RJVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ua8peL4gFXeW6Dk6t8XYYIaLlG/BF2dnJk3GlCXaNiQ=;
        b=V3ULpoW2iObhTemUFrhrW7BxOhDXElkoW1xmG4zS9M7CJw/hZymVwH9ylEy8lMmC/y
         WxSyYVwx2qg7pVsR3cnsFOKGXLon0vsl70ZcwzCDk+5a+5LmzzXILrhR40ETgp7Ga2Xd
         05GvysXJtpJomGOZDFYBcsrvPrAzRr/cxhNw/UQtCvU22fTU0ZdyoTM00N3kNrMIurZ/
         6nH9v48vszWLl9/kLeZiANiFp0jYG4NskH7R8xfPuOfApt4f9caB9kSNESQCggsfl4Rv
         eL/SgTkSTZvle15QhI2Ad6PIGhJ4tnj68J04038mtdnYJWjKeipNNRHaXkuAWpMVMScH
         hz2w==
X-Gm-Message-State: APjAAAXmLDaTwCDXyNt25ZAIzp1QKErAVoncklfAqkTXZ5LXvIGORNVN
	DLeGDxg8v4+fbJ6wkwAO0+s=
X-Google-Smtp-Source: APXvYqwIZX22Dapw206i6nCRTmeepKr/p6zAYEGu11QxAT56D2+1hm2PKdTvJo68EGBWp3Ms/87x6A==
X-Received: by 2002:a17:902:d81:: with SMTP id 1mr39899637plv.323.1563311926148;
        Tue, 16 Jul 2019 14:18:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3662:: with SMTP id s89ls7505648pjb.1.canary-gmail;
 Tue, 16 Jul 2019 14:18:45 -0700 (PDT)
X-Received: by 2002:a17:902:9b94:: with SMTP id y20mr38274864plp.260.1563311925864;
        Tue, 16 Jul 2019 14:18:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563311925; cv=none;
        d=google.com; s=arc-20160816;
        b=E9BomtFf1sZc+oJCMNHB2ILo+ytpAwiFcriB9Pi64Z3Qc/U+BQldv2Mfo7DhPfuK0A
         +qMhq9us+DMty+S+UXGywbIxx1tHs7IJGLWf72jDdZudtACC1zk8H0attmWqTNyYxZNv
         PAYLFBPZ9D5oQRbZ1NluFnPlKjlkfUv2kWkln1EkhhwgM+nS2YfYkskR0nBM1WC9c2oc
         7tJh8Q+D2sD/IWKG5pD2I3PdzXGF380Q+iKIipssBOd/6kbqQa+tUNSOKX5GyvN5Hzph
         j7WCseEa+2InkPD30xzSGMb1/j140laaab1MQRDQc8XAbc3XtsdJQlMcFeZfdw03duuf
         gdgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wditBe2WB9aM35K3GMrXkW9Eb3mbuaueCJdBg7RgTqo=;
        b=D/IXRSPn6eCHvoVaWdGes2ZlN7sDjOATjzYQaI9FIZ28oYfjd83VbxkJjr19cLXyi6
         9E5KfvRyhuzXyVv5NAMx3xWm3QBBYTd8+kOG/CeyoWN+lh8ZN3eaMnsXPW0NrgtvYZpG
         SOmDAxmeM4sxWYhmk+ckOBq6PwK+JlORydXLS2YE65j6SH3/tlxlPu5osHAl9r/YoZUU
         +fOuJh5NCZvd9/r0iID6V+5N0+10wsZcrKjAhCWJBIRdvBs0DNjrzOYhySm7bz5jY7DM
         YhvAegxQfcW4L+q5nUycsoZ0mcFtjhkxm+rGY6B0uo8GGxhMuiTGHWa82m174+26f4CH
         kyZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="X9K+xYg/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id b12si941043pjn.2.2019.07.16.14.18.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 14:18:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id b7so10765269pls.6
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jul 2019 14:18:45 -0700 (PDT)
X-Received: by 2002:a17:902:b944:: with SMTP id h4mr37579561pls.179.1563311925137;
 Tue, 16 Jul 2019 14:18:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190712001708.170259-1-ndesaulniers@google.com>
 <b219cf41933b2f965572af515cf9d3119293bfba.camel@perches.com>
 <CAKwvOdkD_r2YBqRDy-uTGMG1YeRF8KokxjikR0XLkXLsdJca0g@mail.gmail.com> <da053a97d771eff0ad8db37e644108ed2fad25a3.camel@coelho.fi>
In-Reply-To: <da053a97d771eff0ad8db37e644108ed2fad25a3.camel@coelho.fi>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 16 Jul 2019 14:18:33 -0700
Message-ID: <CAKwvOd=YjXANsb7FNP03u8gMYs=WD9N_kW23j7kk1Xe6uqzVbw@mail.gmail.com>
Subject: Re: [PATCH -next] iwlwifi: dbg: work around clang bug by marking
 debug strings static
To: Luca Coelho <luca@coelho.fi>
Cc: Joe Perches <joe@perches.com>, Kalle Valo <kvalo@codeaurora.org>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Johannes Berg <johannes.berg@intel.com>, 
	Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Intel Linux Wireless <linuxwifi@intel.com>, 
	"David S. Miller" <davem@davemloft.net>, Shahar S Matityahu <shahar.s.matityahu@intel.com>, 
	Sara Sharon <sara.sharon@intel.com>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="X9K+xYg/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Tue, Jul 16, 2019 at 2:15 PM Luca Coelho <luca@coelho.fi> wrote:
>
> On Tue, 2019-07-16 at 10:28 -0700, Nick Desaulniers wrote:
> > On Thu, Jul 11, 2019 at 7:15 PM Joe Perches <joe@perches.com> wrote:
> > > Better still would be to use the format string directly
> > > in both locations instead of trying to deduplicate it
> > > via storing it into a separate pointer.
> > >
> > > Let the compiler/linker consolidate the format.
> > > It's smaller object code, allows format/argument verification,
> > > and is simpler for humans to understand.
> >
> > Whichever Kalle prefers, I just want my CI green again.
>
> We already changed this in a later internal patch, which will reach the
> mainline (-next) soon.  So let's skip this for now.

Ok, but this has now regressed into mainline and is blocking Linaro's
ToolChain Working Group's CI, so if you could send a bugfix ASAP we'd
appreciate it.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DYjXANsb7FNP03u8gMYs%3DWD9N_kW23j7kk1Xe6uqzVbw%40mail.gmail.com.
