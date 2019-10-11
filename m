Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBNO7QLWQKGQE2CXVCGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 61528D4585
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 18:37:10 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id w8sf4620069wrm.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 09:37:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570811830; cv=pass;
        d=google.com; s=arc-20160816;
        b=QFQk0atulgmZqh1SNb284JNmekNO6oVRFlarS/TEtzNW8s/nugvVeYBjDNx6NQL+Nj
         XYmWRFe7QKKQ8SyRslBaU+iXG+UuELtkv5XU/dD7uoI705FyIQQjMRq2AA2pLU8DTpYI
         v704eKgN7zXAYjVGGneMLZQ3gwddsCy6DDAVxaN4AeRROoOmIuPog3MtGhGp9yXEXKe1
         cZCG2KrAjVLTxXxF6WBIZXMz5vCiqlvubzVeqCRSlAHDYC5WMnM8Tbt7C47XX4DBko9w
         zOwNDpVIxk0N12m9ZS6BqSiJRbz01eCUda+lot01YtEkurfDwILHtGFtnogKWswQfkZS
         AujQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=de2RXvKmM9QuyqjNubATXjweafJ5NBdge40QjRyYSZE=;
        b=eMde+Bhd7hXxwcVWI9/zo9+DaaW397Pgaey4tHG/+Hv5Mg9sRy1WhwmYB2AWIdt96E
         FSln9riUHt4Y1gvUQVn4og1/j5WaJTTbz9Nz+F0SutIdcPjljBQRJIVoEGjsTgsrosip
         he08QXBIOCagGZtyzqPEquHNk6kyd1d3O5haD/L6c64JEl/ePzR4buSb7/dH4Ua+Grjz
         sr+FXCWXsCc/mVnLBN7FI2uCdTKdVQdKkftiiHHbkcbC8KmYQFmgVTgXV9XvBU1r5oZl
         AUB6r+fk47RdlIVxC8SE4O3gWZkWPKgH+5YR+F6mc5VxrIhHOy+wiXMqtclM4hYLqOoL
         H0/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=WvTdQO3P;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=de2RXvKmM9QuyqjNubATXjweafJ5NBdge40QjRyYSZE=;
        b=PaZjEEN3OoLzXl9t7QeumY+IXEj9jaynK4gN0AE5zrp0xZv7EV0IVNYLpfVsIIvf+Z
         QkVUvR6RzkDCYyVVaj7yqEm4YjEFiLA/MHMphaZKFrN77wyy6YoRBl2dvkhzQlcpmwIP
         cGc5DzstsYkI4oVwU0X79EVUH1+4cB8KAbrsbHn7KQD6nq7ThA569vlMXqkFZYtE/RA0
         oNxySovWTSKGlVGHz6JmtF7SjgUErCxoorOaydnNqnoMqMkz5DRnabKsJu+QJulD05/R
         nCjPWSFKwgEHsXAlCkPcBfG3bifdkw1s8AwM4YAM/M/P8f5V8XD1HlRXWeKKFmHDmgaH
         cpGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=de2RXvKmM9QuyqjNubATXjweafJ5NBdge40QjRyYSZE=;
        b=VG3TzaJk9VeRIvOUedE69ECg3bLX1dLO3it7mZTxogMM1LZ9AqNR9e2M9akJdAzgzQ
         YX7GKYKvHztQi33hlbXnYOTjEl4RDiEujLB278+U8qFJQ1d3GTJzNWbJX7Zb6ExpoyA8
         NRsLX6sh4iNpPOK9XoGkRdc8daokRdhsWMvxqxoadRhpebLlP3fzstrQHGNaKzsj9fAh
         OLjRfaqq9pV3vsG98IZOaJXa36HG5ASNd/xF2Tpu4nQTUKwr374H98n4nN37w4aue6vZ
         FYCVa6Jw7X9loNKZX38G2nnFZMk1WaDXKAgWuNkIBsz5O07OIINJ1+HuCkKSIQvz1LLH
         pCBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVImgAIjVOtm1eRtswGiYRC9jmS9ThgciASXMhL7XMLl7itBE7+
	BWVpm+Ax/2dtCDJL7+s5vUQ=
X-Google-Smtp-Source: APXvYqwEGYFdD/r6wHFfXSYf6/CFg6tXFTHTv0ggu/LaTGSdoWh5esNWpyXSQxxTBqgRouM84C9fsQ==
X-Received: by 2002:a05:600c:2107:: with SMTP id u7mr4152129wml.86.1570811830103;
        Fri, 11 Oct 2019 09:37:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7304:: with SMTP id d4ls3081134wmb.0.canary-gmail; Fri,
 11 Oct 2019 09:37:09 -0700 (PDT)
X-Received: by 2002:a1c:a556:: with SMTP id o83mr4277437wme.0.1570811829324;
        Fri, 11 Oct 2019 09:37:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570811829; cv=none;
        d=google.com; s=arc-20160816;
        b=DiTmEtNctOK6D3/WcjtKpCW4Du3Ur6h5OzHdc97vh3MQZz/dIF5UpnpB9qYdF0ARmz
         TGo+7zC1jIO9nvCPPuZCA3+ggVPMJAVTT8ucwOW7O/VqF3Z4hTUJwhu6RwQppbuQ9Wt0
         AHkgDlgj4jNEMj8Z5/VP5DrsAVbW/QSVhccEkQ4Q2up4HUz/uHleJ3Aaf34KAm56nBgC
         8BGOPZiSWpl2CAslqgyK6HZ/BbANnguRGliOaEIsZhhVJ+OQ3B/j/byQF6nJ8jJDhSHZ
         ynxsC6CaslHPwlIPnq5T3ezIU/z7r+OTpP7bsjWFrIptO2Dg08OxsuE7rKcqkX8ZWPWQ
         TU1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tMiHtB5ZlwenoYg0oyx0g7MXemkZFkoKB6mCSzMxar0=;
        b=kmwizkCeKfZgcihZ5kVIETVBBfn+C1W1VVQCZYiyQLJjms1hQJwvFMMu0ZVoqaE8XY
         FlUuyAM+kNd+Hfr86tjQcsgBlIVdA3fn0cVAxDqnLMXwWnkLmxiGJHT168Y9ReF7MX18
         GHyboHxCxcDEbNK8XUt/xnQOPwouRz51JRakReMeSWnC8gW8hgeq+ux8ls+JtCR4+PmF
         LUpk5M7tKv0EX/NQUtnyydkJUZRN3HDnG22A1QVAUh525tmuHrOGHUVagHCwmAJVI7H8
         5onH1PwNYb/uusWmEXMjSlI1iOWO+gNXAVm7Uj+wX12Vw3N7APtrLej65YoEG/icrsn4
         RXFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=WvTdQO3P;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id q137si817055wme.3.2019.10.11.09.37.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 09:37:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id u3so7476361lfl.10
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 09:37:09 -0700 (PDT)
X-Received: by 2002:ac2:4215:: with SMTP id y21mr9281599lfh.85.1570811828479;
        Fri, 11 Oct 2019 09:37:08 -0700 (PDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com. [209.85.167.54])
        by smtp.gmail.com with ESMTPSA id q3sm1967131ljq.4.2019.10.11.09.37.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 09:37:08 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id u3so7476315lfl.10
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 09:37:08 -0700 (PDT)
X-Received: by 2002:ac2:5924:: with SMTP id v4mr9294065lfi.29.1570811416172;
 Fri, 11 Oct 2019 09:30:16 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570292505.git.joe@perches.com>
In-Reply-To: <cover.1570292505.git.joe@perches.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 11 Oct 2019 09:29:59 -0700
X-Gmail-Original-Message-ID: <CAHk-=whOF8heTGz5tfzYUBp_UQQzSWNJ_50M7-ECXkfFRDQWFA@mail.gmail.com>
Message-ID: <CAHk-=whOF8heTGz5tfzYUBp_UQQzSWNJ_50M7-ECXkfFRDQWFA@mail.gmail.com>
Subject: Re: [PATCH 0/4] treewide: Add 'fallthrough' pseudo-keyword
To: Joe Perches <joe@perches.com>
Cc: linux-sctp@vger.kernel.org, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
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
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=WvTdQO3P;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sat, Oct 5, 2019 at 9:46 AM Joe Perches <joe@perches.com> wrote:
>
> Add 'fallthrough' pseudo-keyword to enable the removal of comments
> like '/* fallthrough */'.

I applied patches 1-3 to my tree just to make it easier for people to
start doing this. Maybe some people want to do the conversion on their
own subsystem rather than with a global script, but even if not, this
looks better as a "prepare for the future" series and I feel that if
we're doing the "fallthrough" thing eventually, the sooner we do the
prepwork the better.

I'm a tiny bit worried that the actual conversion is just going to
cause lots of pain for the stable people, but I'll not worry about it
_too_ much. If the stable people decide that it's too painful for them
to deal with the comment vs keyword model, they may want to backport
these three patches too.

            Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhOF8heTGz5tfzYUBp_UQQzSWNJ_50M7-ECXkfFRDQWFA%40mail.gmail.com.
