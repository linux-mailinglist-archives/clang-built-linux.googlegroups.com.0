Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3NN73WAKGQEH6XZUKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 0090ED322D
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 22:39:11 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id j9sf4574135plk.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 13:39:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570739949; cv=pass;
        d=google.com; s=arc-20160816;
        b=SOjWX3tBm3oiaq31uFB+fLLagF1gFMp82GCcPAp7N8WktoL08U3TJYdTxkWO9q6Pqf
         3THvDnqkJxKRm2t6jHSpueyvmFDG4Tnfnmgk0WNbnjN3HkBklnffxhWbazlLutuq1rhW
         T+XdK36U4St7HofpWndasejF7VRlAyv/8M9pKFX2kuZWi4PUZpFFVPBSXfoIMJ+803eV
         ErtH2PsYRc/VU3IVBTr1rAtrLvwqCeaYbMV076ewfHQ3jUBuy12AbVSb15mqrapuYT7v
         jK1xOlnzZ/uGFH5LiZhb8tO7a8WD0Ytok5CnVSLIUgXk9155+uXMFNZPmvOJx5yfSjTG
         4cwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GmRIWtRDZJ2yYXjdHJxi3Mel6K9IN3Sa2k+0BZE7fh8=;
        b=fmbupYHa6K1axaS4mD/SIsY/3HVBGM4woEQu1yTjYgE2vE6x46pJL+p6th71c+aBFS
         fagM/xYDQKuiZWcomJ6+JeuJENZaNe3tq8y4mcpnQYr1qfpmC7gtb/alralvZion9eeS
         KQSGczCV91Y0x2kRePgdSGKqHpkaZJR/Qw5387UIVOzOog8SXx5QnIhA2/+SxtP7dypH
         Dmx0UgM8TUYlnymlUyclvfMUTkMMr5HobiU7jYH5N/ATp1pQuUSUiDOZDOyKncbIrclI
         FYVBZhgFzclvRpwqH333l8NTsfiyBqEO8veLVxStKXJ/ATixYzgJcuPt2OaO9dyAPOVW
         u1PQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=H3tKHjAt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GmRIWtRDZJ2yYXjdHJxi3Mel6K9IN3Sa2k+0BZE7fh8=;
        b=EMumqIXzvudZ8cWWz5O0mKsoBzz8Icj71xvZgvHw+NCrEklROoE96Nu9SLFMIQ3pzx
         IgM2UoBkHZ4Sx31kAV6AyNyusQ1QxwDRIKtGUqyoD6fEIzwSB8JTwELmhcQ1SWx3tZZV
         SCp1Mf6bwdVfHeFuqSIKH4Pt3ax9F5neUeSyp8T+MYnmX9RiJZ1H2f2XHspnJyKeeXac
         yDNuQHlFg3Mtu/EIXuhM6QGq/MQzf/NdoQjOErZE7s7PW6csx0CW3QRhjDMI2ML1nyfB
         H5YNnffkoolcrffTzVhtDyFmkhSl+0m+hAi3sjtLBM79pojGT+i3IE6Wh5LfMCjCFsnT
         51WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GmRIWtRDZJ2yYXjdHJxi3Mel6K9IN3Sa2k+0BZE7fh8=;
        b=k3vX4FRk2rradZJ4bl9p7HqU3cXQ7BLfmAzCYf7za7FFPF4B4KfoP1jZKdvbPZu+l6
         fv0PPK+R/8jxefKeUnM99zRR5inamaFfr6pAZqOUVxiRStI+mlXpVJe7m8P4MwMf681Z
         5v5M45NDPy4jwug+WupinznkmkOWv4VFidEitTE2zKZ2WeKLH7y32bc6tiW10hktH+/M
         dSlaANA6YwRwztL8iYl81ngB9ISFXBhwA6D1GL4pk8a7egB4eOSuZVQLqH0tBKy5l8R3
         4NY5PTpK7sKk3L+EHGRPQSjnN00I3NID2O7HwV1HvcNd8YhSYyBCjCvIOCNs2Lgk4lyg
         r55g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVXwj+UAK4Hlh8lcz0sMu9P+Hi/oKab0ihM+u337aw75Ku4P5Bp
	+IwFSxbHyeljhDm9hvVvN70=
X-Google-Smtp-Source: APXvYqzdag0RNXJhwtajAR0VSBpF2haj57XZXehKmwGVMbW4FOf7i2tDMribWqLkFR7omVZ0vNTc8Q==
X-Received: by 2002:a63:352:: with SMTP id 79mr13220157pgd.232.1570739949527;
        Thu, 10 Oct 2019 13:39:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:5996:: with SMTP id p22ls1481475pli.3.gmail; Thu, 10
 Oct 2019 13:39:09 -0700 (PDT)
X-Received: by 2002:a17:90a:b003:: with SMTP id x3mr13687539pjq.101.1570739948983;
        Thu, 10 Oct 2019 13:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570739948; cv=none;
        d=google.com; s=arc-20160816;
        b=j1XspWRWM6Q9HvvtOOWonqzW7tDsUOiYA4H5sU6+cuqEhUxjImCV24HaD0pTQ2WjdE
         O/+LvqN9V4lXDxW/6uZ7YjCFOGUmZwomKUKHRXkDT18jKfGyAdC7gJcaJyLX1aOEhCTH
         QA1y3X0dsrokdjFq6sWTB8AW9ARQk27HBafvPOhMqy5MyqXcsWCHs+WsdmvZxE+Hq7Fe
         Le0tY0nQinEIGWtQjFPyTmph0DwnfRUjY5wS4S4w1DeU4QlmK3UqfxRq0+9ng0WjCUoJ
         coCYSuQ6e6oPk7ck6s2npMGdXsCKJ+j0FVkFBfekpnM+NZWFJ1xf07NTYNH5C2OgudJj
         TnzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=S6k3ViNzJ7YzSO4Rk6x02I91FS8Fe+dk8MkxjwLqK8Q=;
        b=s9gA1Rc1iRNdXkrNDSTvyL8xS1DjVbYijNCdbH7silGmXm4YDugp7R6Va5VWr1emNf
         bG8m058OmR7ANNKc+sv45wk3C5c3KhW3iJacEpdI4r7Hy3fmQDwe3n2mzXR8QlpE5tTr
         6vgY5NvzODYEDDJ6JP4oPPveGieqbMqxgNaFi1vAKOPw3NA6byikcJ3qWTPRlGDhzhEY
         sxXnqZbTbbr/1qSYL1zA8ldkqN88flOW9VT1JnCLSUIivEvJxKvCpB6+nMLOkPTH83bU
         Q0+pVl249GapVn+9uwDeHxHVW3nQ0AGa+A/ZMEi0NuBNo0Z66zj9G/EAj0azLXX+n7/t
         bKeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=H3tKHjAt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x197si690783pgx.5.2019.10.10.13.39.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 13:39:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id y5so4646473pfo.4
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 13:39:08 -0700 (PDT)
X-Received: by 2002:a63:5516:: with SMTP id j22mr12913251pgb.201.1570739948545;
        Thu, 10 Oct 2019 13:39:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f65sm6116366pgc.90.2019.10.10.13.39.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 13:39:07 -0700 (PDT)
Date: Thu, 10 Oct 2019 13:39:06 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
	Thomas Gleixner <tglx@linutronix.de>, Pavel Machek <pavel@ucw.cz>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Kan Liang <kan.liang@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Shawn Landden <shawn@git.icu>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	David Miller <davem@davemloft.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 4/4] scripts/cvt_style.pl: Tool to reformat sources in
 various ways
Message-ID: <201910101338.59F36A33@keescook>
References: <cover.1570292505.git.joe@perches.com>
 <4a904777303fbaea75fe0875b7984c33824f4b68.1570292505.git.joe@perches.com>
 <CANiq72nwDgMgXNczW=JRANzH72=f0ukwVoPaud1d7J4YQLQX=w@mail.gmail.com>
 <52794b248ba13e88ab4c30c9b6ea55a7be30df5d.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <52794b248ba13e88ab4c30c9b6ea55a7be30df5d.camel@perches.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=H3tKHjAt;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sat, Oct 05, 2019 at 11:35:42PM -0700, Joe Perches wrote:
> On Sat, 2019-10-05 at 19:31 +0200, Miguel Ojeda wrote:
> > Hi Joe,
> 
> Hello.
> 
> > On Sat, Oct 5, 2019 at 6:47 PM Joe Perches <joe@perches.com> wrote:
> []
> > > As for the commit itself: while I am sure this tool is very useful
> > (and certainly you put a *lot* of effort into this tool), I don't see
> > how it is related to the fallthrough remapping (at least the
> > non-fallthrough parts).
> 
> It's not particularly related.
> 
> It's a 10 year old script that I just extended because it's
> convenient for me.
> 
> I think I first posted it in 2011, but I started it as a
> complement to checkpatch in 2010.
> 
> https://lwn.net/Articles/380161/
> 
> Doing the regexes for the fallthrough conversions took me
> a couple hours.
> 
> > Also, we should consider whether we want more tools like this now or
> > simply put the efforts into moving to clang-format.
> 
> I think clang-format could not do this sort of conversion.
> Nor could coccinelle or checkpatch.
> 
> Anyway, it's not really necessary for this particular patch
> to be applied, but it's a convenient way to show the script
> has the capability to do fallthrough comment conversions.
> 
> I think it does conversions fairly reasonably but likely
> some files could not compile without adding an #include
> like:
> 
> #include <linux/compiler.h>

I think this is a nice tool to add -- at the very least it serves as
infrastructure for future similar conversions. And small cleanups can be
generated from it for people looking to clean up subsystems, etc.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910101338.59F36A33%40keescook.
