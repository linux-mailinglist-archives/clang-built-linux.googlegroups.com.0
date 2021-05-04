Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBHEKYSCAMGQEEPQUIEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDAB37272F
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 10:26:06 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id r22-20020a63ec560000b029020eba8e44f7sf4628133pgj.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 01:26:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620116764; cv=pass;
        d=google.com; s=arc-20160816;
        b=ujAIKrwU2TIPGZ+rvPnb82lUuIYivRCba04jR3FMmrh6G9VbbbXaMy2TXZhoyHXnky
         cHpHe15KEl5GLQt2/NoDLlirAKGabt0d4gUNlWjRfHnZe/cVVwQsQtz6yxjKhj+fAB90
         d6QI5H9gcQ2F+xhAg4CZD857iySG4X4m3Ayv5lhVfHm1sawRtU5KM7OsWff4xtY8uvmU
         VP7DGP3+aossUywIlNeKb/f0fFNBdBfrOwmdygREv2B9InhJAM/Jp9BfWoB+MZkYEfbK
         RWyTn2kjpN2nnaLlyhzxo2N1/wAUuJEq1HzfeNOSmOCVoimXxzBnYNJNv2dVCiBSCyd4
         6sHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1ipZZz3QObhK7GgQcrOk/p48v4EdHINsJo5vRKNqJw4=;
        b=wOzcVN9gZfC2cbuaguoujaWVeHbMME5B2d+xdv8AiNIvjj2ewa5db8QivmCncSLqZJ
         3hdoujGhuGDcRz6DnbueqUFHyq/msJShhii2HOMnGXR6KJG0M/eY1ysv1VyrmocmDL4D
         wAqL6j5sVby5pgt5chMosspd/54rrkK9RU2p52533/Y5Nd5eXRE984u/YGWs1/Nc/LwE
         cN1T+lmoPLN4kAQz4AGwDk5CpiYsHDhE0aqEzSxhdKwE0ENbp4TYj3bebkFXxT+ogzsF
         tlbW791jsHYtuIKjsILkzWrWmY7Fur5AGWbfJjVeDEcrj4oUiz1LFgRWWl/DIbW7J+FG
         LNew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yxz+v7dZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1ipZZz3QObhK7GgQcrOk/p48v4EdHINsJo5vRKNqJw4=;
        b=skW6OBz/oJqgYw1tyU4nqhp+amcAEN46+oSKU7piceUWKkdHKoZRehfAYqei+rZRRr
         kdo/e2/WH42KaXMKjuI9jP7ABxPQlJfHIuaL6h99m4KCVXnSlD55so8V7tfrbTdS67gj
         BfRbSlCkpH+0H02v49UqtHva5WXHrCfEf2P1/ekeYmCEABUpHq6XpHN1rpDJQ3qHbCAz
         OJEPTNLVW6SMFSSAFxpCmu1Q3DrK2vnRmWS/P0FbpI/aC+gBDJ3UNGSLMxXw1CSVpLx3
         QTuMyvRaq0um6YwlplYpcbo0HpMUN6kmwv4v9oV8LIY6HnpzlOenypEyJO4BhAAHtKP9
         hxmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1ipZZz3QObhK7GgQcrOk/p48v4EdHINsJo5vRKNqJw4=;
        b=i/IMZnEH9aqc5skfkLjcT9qmx0XbVOiBDP9stU/4JViJVTZDzJ8gWHdJ704JcZroaP
         pa+alfvIfKY7SwC9hEYXp1Jr7TK/GvRQSUe88DlCp9l/vBKdd3CXqEq2R7zKN6ZniOZt
         XpwS1thtzLpsrro9QjEAIzD1X3a9kUnsv1VP1UEEk6xt0WtXZDvVP9KkG3+8gat7vkfm
         L2NbXjufHIr64PPMA46/pJEFP6S4ePm60Op9Q9Hra9ghEE1b9AQ3FoZOhMHup+vu4WGE
         nmxNi/c43H5ErL+RT//bp+U2jq/GInGeGr86u7DFwgxy4TkCq+mpEV/q3rh0eQjiMF29
         gkGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ej7oVpRcO/T8+c2cgp/IeHuSVxe6OjbYu09N0wEWjsyCkf1e7
	3hGGFs3yLHAyKet2IcTU1Ck=
X-Google-Smtp-Source: ABdhPJxQLHfyWp32l2ZWQcBEi89Iq2E+WH4FPAbqvWlsI0kAHwSI1QNer4ePWiArTbt2aDbBy5x+sA==
X-Received: by 2002:a05:6a00:895:b029:27f:96bb:915e with SMTP id q21-20020a056a000895b029027f96bb915emr23495904pfj.77.1620116764596;
        Tue, 04 May 2021 01:26:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ea10:: with SMTP id t16ls4721619pfh.9.gmail; Tue, 04 May
 2021 01:26:04 -0700 (PDT)
X-Received: by 2002:a05:6a00:1a02:b029:27f:f7ce:49d8 with SMTP id g2-20020a056a001a02b029027ff7ce49d8mr22671439pfv.24.1620116764030;
        Tue, 04 May 2021 01:26:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620116764; cv=none;
        d=google.com; s=arc-20160816;
        b=lYSu0Yz9w2uxCDzVOCzpuMpySwiEYeOSbr7UOCldcnfQ6zxBWbn+frKMdMhvz81XIi
         5QfsWQ9YYHEi7hqub2e889rkZbHnOtVwzy0y6mI/zL3zC6BWWniSL6yCi5AIqNcclH3U
         5YaOcZbnxsUrD3fN0RTTGaICjALwFI7YbNlyBzUpmzhXZ3I693gwhW4/UnG9nlBM4YE4
         BBJl9bJgRB6gYiDXOS128501Ny15KiYTriV8as0h+1n8Yj3Dfj45tf3mnJdvos+2UQAf
         DkKvttZHEuY8ixKE6JXOEPK8m49mKUKSoCpSLAd+oOQrvoWzkkAAHxC4wzlIaV3e9lz4
         KzWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MOPBfUDxQw0i/QL1rY8889PTB5wrhESNQSUAcGlJDnY=;
        b=P0EBdGtEj3ezT2lcM+TmLNz39DIjQIsKEfzVCxJfXj+vS9fbNa5zL4luabLNSnT5js
         qR0Q9Qk9tSnugav0ilp10geIPwdNiz/i9TVaSYuAvJbKpl4wDBGA+rkBW1zDgRgPyxc+
         r9PqUb2FL/BfQtuZhY27LVNZnQ2yRfxI+JYG+FK2B1Xj/NNjs11p0gMLc1jh9VXFMrpw
         iQehlLQmgzWaEyvA+8trwPgN1nnsIzb3MTWBZTUDgqaJEfOkUpsjrseWM5HwlxAJctIg
         O0ot4EF7SsthrL3K4Vjn4mNVw24ONW4Tf8r9DlWUkXD+BMOBrlPs80oIpllKDfgFrChJ
         SBsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=yxz+v7dZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w3si111330plg.0.2021.05.04.01.26.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 01:26:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3A0E06023C;
	Tue,  4 May 2021 08:26:02 +0000 (UTC)
Date: Tue, 4 May 2021 10:25:59 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Sasha Levin <sashal@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	stable <stable@vger.kernel.org>
Subject: Re: [stable:linux-5.4.y 5541/6083] ERROR: "__memcat_p"
 [drivers/hwtracing/stm/stm_core.ko] undefined!
Message-ID: <YJEFF1iHZ4o7LUgV@kroah.com>
References: <202105030311.xWwkyV9z-lkp@intel.com>
 <CAK8P3a0ZdZY94KVwF-C_t+7rx=iHC60ty52AQAmc1VDZwsn9Rw@mail.gmail.com>
 <CAKwvOdmCmvHNpyjNtNU1OeSzK_E_9n9T4CPiFGD7K_JuJDOj-w@mail.gmail.com>
 <CAK8P3a3KLasm-CdcM3HCP6EZO1Vr0ay17jw7zSy0btqPr32WRg@mail.gmail.com>
 <YJDQ0ePGHxmcB7dX@kroah.com>
 <CAK8P3a30xJ1+zrCC4fk+q9xzLspHuE4VM0UHSWiU3-iFeNN+6g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a30xJ1+zrCC4fk+q9xzLspHuE4VM0UHSWiU3-iFeNN+6g@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=yxz+v7dZ;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, May 04, 2021 at 09:41:14AM +0200, Arnd Bergmann wrote:
> On Tue, May 4, 2021 at 6:43 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Mon, May 03, 2021 at 09:16:42PM +0200, Arnd Bergmann wrote:
> > > On Mon, May 3, 2021 at 7:00 PM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > > > >> ERROR: "__memcat_p" [drivers/hwtracing/stm/stm_core.ko] undefined!
> > > > >
> > > > > I'm fairly sure this is unrelated to my patch, but I don't see what
> > > > > happened here.
> > > >
> > > > It's unrelated to your patch. It was fixed in 5.7 by
> > > > 7273ad2b08f8ac9563579d16a3cf528857b26f49 and a few other dependencies
> > > > according to https://github.com/ClangBuiltLinux/linux/issues/515.
> > > >
> > >
> > > Ah right, the big hammer.
> > >
> > > Greg, not sure what we want to do here. Backporting
> > >
> > > 7273ad2b08f8 ("kbuild: link lib-y objects to vmlinux forcibly when
> > > CONFIG_MODULES=y")
> > >
> > > to v5.4 and earlier would be an easy workaround, but it has the potential
> > > of adding extra bloat to the kernel image since it links in all other
> > > library objects as well.
> >
> > I've lost the thread here, but what _real_ problem is happening here
> > that doing the above is required?
> 
> Randconfig builds fail if drivers/hwtracing/stm/stm_core.ko is a loadable
> modules and nothing inside vmlinux forces lib/memcat_p.o to be
> linked in. A simpler workaround for v5.4 would be:
> 
> diff --git a/lib/Makefile b/lib/Makefile
> index a5c5f342ade0..745d1207e9e2 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -33,7 +33,7 @@ lib-y := ctype.o string.o vsprintf.o cmdline.o \
>          flex_proportions.o ratelimit.o show_mem.o \
>          is_single_threaded.o plist.o decompress.o kobject_uevent.o \
>          earlycpio.o seq_buf.o siphash.o dec_and_lock.o \
> -        nmi_backtrace.o nodemask.o win_minmax.o memcat_p.o \
> +        nmi_backtrace.o nodemask.o win_minmax.o \
>          buildid.o
> 
>  lib-$(CONFIG_PRINTK) += dump_stack.o
> @@ -48,7 +48,7 @@ obj-y += bcd.o sort.o parser.o debug_locks.o random32.o \
>          bsearch.o find_bit.o llist.o memweight.o kfifo.o \
>          percpu-refcount.o rhashtable.o \
>          once.o refcount.o usercopy.o errseq.o bucket_locks.o \
> -        generic-radix-tree.o
> +        generic-radix-tree.o memcat_p.o
>  obj-$(CONFIG_STRING_SELFTEST) += test_string.o
>  obj-y += string_helpers.o
>  obj-$(CONFIG_TEST_STRING_HELPERS) += test-string_helpers.o
> 
> which is the same as what 7273ad2b08f8 does, but only for this one file
> instead of all of lib/*.o.

I think a "one off" change would be best here.  Can you submit it?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJEFF1iHZ4o7LUgV%40kroah.com.
