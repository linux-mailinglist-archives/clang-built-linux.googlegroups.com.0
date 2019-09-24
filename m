Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4MJVHWAKGQEZNPPYDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 373E0BCC7D
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:31:46 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id n12sf1336179edr.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:31:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569342706; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hyj1XkaZGOHNfI7pgHn38GBZeWJEP27h+goY5wOuL/Z/RwoI06JzGOv+W751/vPODw
         2I/dNKaz3/rUmvMwcGFYqTjgT9inFu9VvFNqBgMTqyVo2PY6jieFhG3vcp0rBzPKg3wF
         phzLOrQlxqYjmJXJ2B4VyOlmowVI0bmbvg4+1x0HlewUEP5Yy902HdroJ/SC1lC60fbj
         JhgHl9ust6zwAsF5LPZDEPvCbCF/N3PaBLXDKNZJeGoJsuYMCbgdJDqaY4BfuA68L7VQ
         0AnVIJVlZ/EMy9RJgEsiMEt7CfXHG4UOUnzhks10GnKHWFpJRSrUm/3qTiIbyOxlW5dp
         NWkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=9H1Mwr5CCVgB58D8l9NbUEp/NXTRK4MjPUhD7Wl0C6Q=;
        b=uG/h8wnXwxa7Qjg9TQNq+3/zm+LB18GbUhT541k1/nNXRSwhmFwD8lieybhoNeaf+M
         LAvYkiJFtZ6Y1OcJKhbLzLyFbYUx0wp08rdkaCdioY2KByh6CGd/5uFdA1VMhpD60wbu
         2SyBaYvEoQn8it94lzUABduqXfU4PK37XwiMqQyhakIQnMR6syopYtUKUct9E8+UP8X1
         tux6Olv6A6COdSjhbg9mgIZ6u+MPZxkJzLRHFRhjBeLJN++a31Jnsx9nbrPJB4AqXSBO
         4W147bMRz6tP6dg4LfEQQpEbeR7TDvrX6qI1luICxdfz9C/GbXHgKnMiRwZ5yjbSKKoD
         CQqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hq+PrLVC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9H1Mwr5CCVgB58D8l9NbUEp/NXTRK4MjPUhD7Wl0C6Q=;
        b=O9sadrNcBWBhvC7oA8/9PiVVBBkI/84e2/xq6QsQl3d3tStQ3f7aXXTd+/dxhhgFDx
         FBt0VhabDLE/MtUi/HwYWpuY5P2JAOTekMI/4fZ6i/rNOceZQtYhFSX8MuTdMVubbPKy
         /gp0pZVmWW/MPxOlsgvt+HwKWcRMj6ysBthnGW5H+vQ/FpM8YUXmlPua6ZcwXw1bwpDt
         QoKyQqgZrXvpWQgwd89w3eilS8xQlHT3+xlGZVCZa+P8QG9oUWgLaJG1d+7iu+iFWHNy
         q20NJiydJjuGHAinfV6hA12KE24U6/BmybLhsq8AgJ3nvWLxN1l79rD1s9/Gv7xiOh5N
         VgjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9H1Mwr5CCVgB58D8l9NbUEp/NXTRK4MjPUhD7Wl0C6Q=;
        b=ZHeA4zL/GxyIM2AL2xslsl04Cigwhkbej84Sd3jVjJ54YS/wyxS3AbK5JPTKRCdUtn
         ejAZUETg+FQNwIj6hsS6INA0l+qL8yFxwyvCIX4q9rd8V8ldIsV8SL+4zmXDM/llh/WO
         kJN+mBBzA9cKY+M2pK26njxb/Zm5R7pax3IFPSvx3jTNiNV4evtNfwJgr9z0xIh7/Pum
         EEz2pWySu4KmietRX0BDKfUEnMSsJXTpPAn6N1RUrqQ9EkAFHxyD8OuwXLDDEPtrad8H
         25wC2mptMMaOe3pktJpJYo958X/ci8ccsShsPaZlLD6fl3b5MhX7U9BUAKNeQbDzwcSz
         Cthw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9H1Mwr5CCVgB58D8l9NbUEp/NXTRK4MjPUhD7Wl0C6Q=;
        b=AT5Isf4nRU1eWaslbym+BeWpAzSLyF05ROleKYFReBDXq32hlpH3UgWeHPfySPmlLY
         vfXyYwGEhEoNj829bd3igNgSl1tQbBAstlsiPxeXUQvjVFO+cFEzqSbrh4Yv3xda55Aj
         PziDb8a9FlN6Xd4u5a2qJrMF/TwbtSx8svncC9i1rOuHrB3STvvcJs7LhMePKlaskMYi
         Owy+SLjygu7QOFo8UQxnyl+/E9l4sfSM6t42Yq1WIhMyqgjEJaP//o80jdVdNcGm0YrT
         S2srnZhondDIX3B/l2akmYvSBsktI7TVJdzt85TgVpSXQMoMMkai7FXlvP9hpynLfv2i
         U1uQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWym9pysij/BS+HfhCgKPUi4gk9EGh+7yQ9FcLoful3yVNowjfk
	mT5tAinugGJV7HB9kf7FYso=
X-Google-Smtp-Source: APXvYqzeLwIjqRR4rpMFYGy4SSeOf+gyZ+bEiJnm4c/D4mLQjzxjctSWvKYz1cxZgNbnrYv6Inz6Cg==
X-Received: by 2002:a17:907:411d:: with SMTP id nw21mr3271526ejb.8.1569342705814;
        Tue, 24 Sep 2019 09:31:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:7ac5:: with SMTP id k5ls571868ejo.14.gmail; Tue, 24
 Sep 2019 09:31:45 -0700 (PDT)
X-Received: by 2002:a17:907:10c5:: with SMTP id rv5mr3314653ejb.262.1569342705326;
        Tue, 24 Sep 2019 09:31:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569342705; cv=none;
        d=google.com; s=arc-20160816;
        b=oplGBSnVkBQuvoKBVJc90agKiRrGm7G6OQK9L+DPAQj3TMxivsKg+43rL3Cg+7gQVa
         6+hdsygtZF33l1lHsJEthuf/2zQRCzBI6WeHSFPV+4Iy7ba/M4PYKMRerqeCbC0IhAtj
         S1SaLknc+6Ctb9xryd5AO16BbPL9az6erHfb1mER0LfPigS6T360Hvcny4qy6cXtXeBX
         zAYFjmTUw61+cvjMd6ZXySsH7xCH2OkelYIOAatk9KcSDeZ/jHhtJjjSuxNree5reE57
         eZUhmyvh4KiMHNriH4d+XyqxwHIPSNH3RZ6z6fS2JjqrXozuhr4VJ5JbTVShx+SX4Yhi
         aCug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8M/kZh8agGl/z151FlVojFP0EHvHBkhwxvfVDQ5Eixg=;
        b=Zm8GvXG8Cj9K5JHwnVdVWfOsgpgsP+YI2804yVfxrjHvgjZEK72tRlUgVzHD5MQUIz
         xOtxr4lwYebOOJXpRttz7h87FbCuE7Mu6tSXQtf0/mmSf3bi9S7KhA4ZEOyqVOARAhIv
         eOBcL4UXaBQ3VAIivBk+DJ/YmtEQmTT0nHAk+Vk+V76V6XNnvsdTx+4ogffLQKobnd0j
         9evg4Eg3oLSsSLV2ic5Q8rhOc2VYwjbduldycOslrwWp9jlQyFd9y8Q6SpTUYhVRr/Yq
         ug3EH3UUY14cnhxpFVDqMwaMmAQTW+/GtUUZPdpg9uhY0lYUcaFPv92lq9CYadxZ9ljo
         aDng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hq+PrLVC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id c31si147177edb.0.2019.09.24.09.31.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:31:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id v17so756272wml.4
        for <clang-built-linux@googlegroups.com>; Tue, 24 Sep 2019 09:31:45 -0700 (PDT)
X-Received: by 2002:a05:600c:2219:: with SMTP id z25mr975287wml.109.1569342704825;
        Tue, 24 Sep 2019 09:31:44 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id r20sm4243707wrg.61.2019.09.24.09.31.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2019 09:31:43 -0700 (PDT)
Date: Tue, 24 Sep 2019 09:31:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [omap-audio:peter/linux-next-wip 1/85]
 sound/soc/soc-pcm.c:1096:6: warning: variable 'ret' is uninitialized when
 used here
Message-ID: <20190924163142.GA3424265@archlinux-threadripper>
References: <201909242245.SkUt04Ak%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201909242245.SkUt04Ak%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hq+PrLVC;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Sep 24, 2019 at 10:19:49PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> BCC: philip.li@intel.com
> TO: Peter Ujfalusi <peter.ujfalusi@ti.com>
> 
> tree:   https://github.com/omap-audio/linux-audio peter/linux-next-wip
> head:   51e628f93253ce13bf48125555ba936e133a0dbc
> commit: d52d411e052356441fe6c30e77a8a6f506ea43ae [1/85] ASoC: soc-pcm: Use different sequence for start/stop trigger
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 144276bfe43b088390ad11ba0c82cab9158e42e6)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout d52d411e052356441fe6c30e77a8a6f506ea43ae
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> sound/soc/soc-pcm.c:1096:6: warning: variable 'ret' is uninitialized when used here [-Wuninitialized]
>            if (ret < 0)
>                ^~~
>    sound/soc/soc-pcm.c:1093:12: note: initialize the variable 'ret' to silence this warning
>            int i, ret;
>                      ^
>                       = 0
>    1 warning generated.

This has been fixed in the latest version of the commit:

https://github.com/omap-audio/linux-audio/commit/961a6e2cbcbf15fffbf4ac438786ba59a66c757e

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924163142.GA3424265%40archlinux-threadripper.
