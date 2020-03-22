Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGEX33ZQKGQEU6U36JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A99E18E9EE
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 17:00:26 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id z29sf1901289pgc.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 09:00:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584892825; cv=pass;
        d=google.com; s=arc-20160816;
        b=JpaxA7hm6ZqROg4HTaaQyBfqPI97WokX7CRvbLV5RNLyNxMd1XzCyuJje1bCFAGuy3
         8G5svnXpRdELT88piLiK01Eg1OTsKWa5Fk5nkeweH40a6grYmOCJ0gSRUEeKZa0M5dQE
         p6oe/S44uL7gUu4nx63BlaU0A2ZdxSAorfb7AjNpbhQwQb7GwxS6TDkQ55GeTT2aeT0L
         x4lwvgn6+i1ua4M5gOklXuwTWnjXplzj6v+rQC6F/L3Hg5RQzl4ad1IcJQlpcIuauV0g
         Q0j3caaoMnRnXs0NWmAWVTJaIu8OVhr1eufHc3ObPF+LlFr2fXi5JlEiSqSWl2TBXkaE
         aCpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SuWqwCXrhN9K9bQiIlZ6V9tmjasasLgGUMbp7b4/sKQ=;
        b=pfLfBLxkKFJe2ZLhWxtqZcIS3Kj6PpMw2tPTBdKqCDzfvP2ZhDNSCh+4PhZJU8NrL1
         g5Pmfhq9Y42grYy/f/irKwiKyfdzlKhLxcNRgT9dstHo3AAdH+n4XpEkaKbwBITE9zsM
         vnpQo10aiEzTHk94u6+XuFMdlw/8Qc+JdGzyKNiugpka7lz9aH6VASG4/eNKBs27frEF
         oXQL0z1QQdR4fHHKqHuODb6N/+CLSvB2JMRc5qza/NP+zPktChJ5/m7QQglZ5WfMkXn5
         KdBS+ocel5M59tRz3v6GtFQgMEpLN6kgfIh8u60b2sS+4FYoY+5+eok7wHMqk2Nf/L3h
         Z5CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UiseloQi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SuWqwCXrhN9K9bQiIlZ6V9tmjasasLgGUMbp7b4/sKQ=;
        b=sWpek614yAf7zHwwNwJtwXd0YKfChrT90oZxJV43vJ2mSq9DsPtgp5506e8NL1b/Ez
         2bXg6VnV2fnSIf3V+JPxl5C277SowCZf8NDohFHaEkdQX4wy2R3/gd6yQQzZksUuBo1P
         2khbinLdkp6fxfw7RYoI1Pv7/rgNYFyGsGSFIrYryeSAm44K6JWMXeIdGhK4rk8XRVK3
         OBHv2rrJJcqG8w6/38J8LHxA+4hfti39YU0BDiRoCdFvmOv5Ae8VUsOz9zHPPcPxeQAu
         MVt3JfSkVLXnarPHuXIx4AdixrHbPD8MhFDqJqufjXolJljIEwrdiJPrB8I6/UZ/x/Xy
         ca8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SuWqwCXrhN9K9bQiIlZ6V9tmjasasLgGUMbp7b4/sKQ=;
        b=OP5PAlzDzBjj9od3z6R6S/faX2DGJfKB81pDuwwcESHoKULxV6HILZYEYa/VGdzHR5
         DxxN9vktkVuepiOQNIU6U1jVY2We/1IBstE1YDpr6QYk6u0zn2vXPDv2D8lZz8sVU/Jl
         pa5cuHnm1H13QRxI/sAS7VnL7Uztsje/07tswBDnKBb1T8LAAbx0JkWsITcQjyZyiZdY
         71vg7iPJNdCqMTZbjDHgaefDRNgRNswybiUI3PbgzX4PiN8BidOd/lynKgzjhoMtDaSB
         J5ERueegx/dc6V9yQbHqji5kk8S92nM7BInNH2OZSUHhoG8C9HNV8/V/7kQFjH0nG7S3
         6I9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ29SzaH424lZVoEp5JvoUSQIkDRoHimLTseSqEO9gTD6+c9YoFs
	avSsdLVcpeliJ32OCNnjIvA=
X-Google-Smtp-Source: ADFU+vsiAP9lhzuzguFP3/bso29HoHnFu8cTno7lE1XFIwvKcNbheWJVDEOVZaih9e7Fay5YYgTl8g==
X-Received: by 2002:a17:90a:2147:: with SMTP id a65mr20037798pje.176.1584892824959;
        Sun, 22 Mar 2020 09:00:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d6:: with SMTP id 205ls2955588pgh.7.gmail; Sun, 22 Mar
 2020 09:00:24 -0700 (PDT)
X-Received: by 2002:a62:648f:: with SMTP id y137mr20831794pfb.199.1584892824481;
        Sun, 22 Mar 2020 09:00:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584892824; cv=none;
        d=google.com; s=arc-20160816;
        b=GUouxDw7E+F7iVZpRS578pn2+AXM6ZONZSKFHnO9CwOzSAfn7Bu4VlnmgbVmsPU/Z+
         q99mDLE9TKGhQw3Ugfj9afNjAoo5h/leB7/yAl017wZDAsWYcM0BdQtXc3Lez2JlJsIE
         rLkDHDdU7NJu7xtOBfw6XPqeL7rss2UqYX/Ws/BejLdlrU3Gt/psl/ncCo4wuUgVrjBk
         oSA3mefrX3M9ty8KEjLLfSlbfoNS+ca8zDA1n9xA9KmWFKypgs4jYduFepiUdpieiGkK
         pmdRMBD3TvKNQ8pbCbqe4pzRwCcvB6JH0uryP++CeNNt75Joi3fimFwSYUpiBhd37WuX
         jWkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MZnunFMXbRiY6HhjSua+SYJfQ+tuSHBnq9fjrfedNSU=;
        b=kqPzRtnlFRFHun49ElwR6bOXfI5jZQyeScqIWGjbIjR+cyqfPoiUPBcr3grtTtbcqA
         ANjUPXQS0jJgc75+uT5+AlvMSWZafaKaeJ1vYIi0LkENA9Tgwq7oQo/ipj563pxmB9f1
         UKmcsk03md9PzndiDHvbsdeWzQ80bGdcGVPgkoGEYwNSA+fQ0M02lO9hqodrJIyuuwAV
         GkQfSHUp2yWQ6HjwxvoWcrNsF8xtwIAySMe8T5X4CfAakK13QySFaoJWCnlcyZI+xNqC
         hacjVGPU6LbXWUPGxwRS9M2U4NpRUit3T6DjErKAn4huNp+Ja9OjzY9H034u2DGwWcrL
         ZtLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UiseloQi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c125si162744pga.5.2020.03.22.09.00.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 09:00:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id z25so1849508pfa.5
        for <clang-built-linux@googlegroups.com>; Sun, 22 Mar 2020 09:00:24 -0700 (PDT)
X-Received: by 2002:a63:7159:: with SMTP id b25mr8811601pgn.72.1584892824203;
        Sun, 22 Mar 2020 09:00:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 15sm10831504pfu.186.2020.03.22.09.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 09:00:23 -0700 (PDT)
Date: Sun, 22 Mar 2020 09:00:22 -0700
From: Kees Cook <keescook@chromium.org>
To: Nicholas Piggin <npiggin@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@suse.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux@googlegroups.com, "H.J. Lu" <hjl.tools@gmail.com>,
	James Morse <james.morse@arm.com>, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Russell King <linux@armlinux.org.uk>, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Peter Collingbourne <pcc@google.com>, Will Deacon <will@kernel.org>,
	x86@kernel.org
Subject: Re: [PATCH 1/9] scripts/link-vmlinux.sh: Delay orphan handling
 warnings until final link
Message-ID: <202003220859.E54327D98C@keescook>
References: <20200228002244.15240-1-keescook@chromium.org>
 <20200228002244.15240-2-keescook@chromium.org>
 <1584672297.mudnpz3ir9.astroid@bobo.none>
 <202003201121.8CBD96451B@keescook>
 <1584868418.o62lxee8k1.astroid@bobo.none>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1584868418.o62lxee8k1.astroid@bobo.none>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UiseloQi;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

On Sun, Mar 22, 2020 at 07:16:29PM +1000, Nicholas Piggin wrote:
> Kees Cook's on March 21, 2020 4:24 am:
> > On Fri, Mar 20, 2020 at 12:47:54PM +1000, Nicholas Piggin wrote:
> >> Kees Cook's on February 28, 2020 10:22 am:
> >> > Right now, powerpc adds "--orphan-handling=warn" to LD_FLAGS_vmlinux
> >> > to detect when there are unexpected sections getting added to the kernel
> >> > image. There is no need to report these warnings more than once, so it
> >> > can be removed until the final link stage.
> >> > 
> >> > This helps pave the way for other architectures to enable this, with the
> >> > end goal of enabling this warning by default for vmlinux for all
> >> > architectures.
> >> > 
> >> > Signed-off-by: Kees Cook <keescook@chromium.org>
> >> > ---
> >> >  scripts/link-vmlinux.sh | 6 ++++++
> >> >  1 file changed, 6 insertions(+)
> >> > 
> >> > diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> > index 1919c311c149..416968fea685 100755
> >> > --- a/scripts/link-vmlinux.sh
> >> > +++ b/scripts/link-vmlinux.sh
> >> > @@ -255,6 +255,11 @@ info GEN modules.builtin
> >> >  tr '\0' '\n' < modules.builtin.modinfo | sed -n 's/^[[:alnum:]:_]*\.file=//p' |
> >> >  	tr ' ' '\n' | uniq | sed -e 's:^:kernel/:' -e 's/$/.ko/' > modules.builtin
> >> >  
> >> > +
> >> > +# Do not warn about orphan sections until the final link stage.
> >> > +saved_LDFLAGS_vmlinux="${LDFLAGS_vmlinux}"
> >> > +LDFLAGS_vmlinux="$(echo "${LDFLAGS_vmlinux}" | sed -E 's/ --orphan-handling=warn( |$)/ /g')"
> >> > +
> >> >  btf_vmlinux_bin_o=""
> >> >  if [ -n "${CONFIG_DEBUG_INFO_BTF}" ]; then
> >> >  	if gen_btf .tmp_vmlinux.btf .btf.vmlinux.bin.o ; then
> >> > @@ -306,6 +311,7 @@ if [ -n "${CONFIG_KALLSYMS}" ]; then
> >> >  	fi
> >> >  fi
> >> >  
> >> > +LDFLAGS_vmlinux="${saved_LDFLAGS_vmlinux}"
> >> >  vmlinux_link vmlinux "${kallsymso}" ${btf_vmlinux_bin_o}
> >> >  
> >> >  if [ -n "${CONFIG_BUILDTIME_TABLE_SORT}" ]; then
> >> 
> >> That's ugly. Why not just enable it for all archs?
> > 
> > It is ugly; I agree.
> > 
> > I can try to do this for all architectures, but I worry there are a
> > bunch I can't test. But I guess it would stand out. ;)
> 
> It's only warn, so it doesn't break their builds (unless there's a 
> linker error on warn option I don't know about?). We had a powerpc bug 
> that would have been caught with it as well, so it's not a bad idea to
> get everyone using it.

Well, it's bad form to add warnings to a build. I am expected to fix any
warnings before I enable a warning flag.

> I would just do it. Doesn't take much to fix.

I will do my best on the archs I can't test. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003220859.E54327D98C%40keescook.
