Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCV5VDWQKGQEZWZOOGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id B4362DCFE6
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 22:20:27 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id b14sf4988245pgm.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 13:20:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571430026; cv=pass;
        d=google.com; s=arc-20160816;
        b=FdWxnaJomjC8RO9X+5QjmUfBlM0g41nn/QyJ4mMjgyHFVkZ1nNMs9PEMQezC3PGZAw
         qV51CNbqNVo1QPwFE79oKUggQfvPeoBNQG0lctidqfuHbcGfFobctzyRDl7nABQQrXvh
         jJxszfTUdDSR8KTRyvdFnDNK+M4W4P/P5jW+9IqziQlSq8OLHlcMGfOI9XNqbhWrIq8S
         9twbLBTgh/6uh5YPQHwTwI3KyWPGxbor2M3zTXyavpxP0JRyEdezO3poAB5cw+bysmu5
         dacqxwlnBAqw38htpM3zGwhhe66wPVzCtBccbcKZQe/uXx9dSmvwhDv9K1qwE5CN/FBi
         5E1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=eWIJNYiAMrYkcsOo4A8CKxw+oHfMXowYkbOGEfhRCqE=;
        b=iJj6e7X4ABXGeQzhnVz6sgdGeViLJDBiXY1lMJ/t69jSc9kaz31crIrNhcC7M9T+Ef
         CIN+sw2fnOwcQJfRU0EuuVMjhXUyombx80Ppka/umJqrqI8uFpggxDHrisdATK/ix4lK
         hS+co20XAfQj4rGH8GUvXKmt/VD2GKbut5/+nXZNETn9vd+dHDchclA11jS1dOvMIKtd
         bgxEQ4snwzlS3lypUzThvzSMu/RlbvS5EC//ng7GCUr5Z2BFhkZPTEsevHXAZ5Yo9UA2
         F5ICLMcDMdw6A+U75HJcud2pruAPBxERvghbD6uP6qqRiVriyVRIqjg5r890icVp5nha
         NteQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qu5kXunW;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eWIJNYiAMrYkcsOo4A8CKxw+oHfMXowYkbOGEfhRCqE=;
        b=QH122KzRN6EXMPIIXOzWAEGbov+k/yJ0bYfxBJDI6Q/KpRxigCEHi+I83b3oRKAxRS
         yDq3cEiaAiBDI8wjEucORSeyKHfcUQ1OM9mEpD5UF/oSu4QJTXWlTvKwBzO3tPPm4oVT
         aRCFO5ArExYAB1RSJ/6uJYqgWJa+jdFHiVkS+K3yzbtzMpigUG7JJJJs53yGHkQnd7Yl
         eAfPDxIwdnJ6FxTKug08oCZyb5c1I+gdK06MnhzQ10u9k7cIzC862PplHE0kxrk3e0ct
         459PWdw+KiqwoVsyVfwrQxouNK1Px6c5hJkFZ5TTVTzZzNdWFals5G9wNBP9dlkGLNzS
         EGtg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eWIJNYiAMrYkcsOo4A8CKxw+oHfMXowYkbOGEfhRCqE=;
        b=OuKXTIa5Ldc9krhu9C8IiT5oquIfgdcmjn48dn5Bhw2L++MHakjIg6vL6USvgMr4JQ
         abm1xLdY2ZxBlTR/1Wb7K0bQA6i3eSET4tNNIwqU/RllzfsmG02LjiV/XZ0ztzdPIpWC
         /eUrzaR0d9sRMEmjNALmw6tyKmMUp61LfED+x1LncpouOEsIsp49bvQClAjUgxeVuNU/
         wOJfQz4JSmrcq1Dc51zCx0uRckJk5hxkHRWeMEtGae+7TMs4IUmOhCgioNVVvQkdBbq6
         PqNBXACiV8lbFJ4QtWnmVN4Mutjx7rUKljTqm47XGeMOeRdcWg/NltCrRPS1y7oF7T2l
         uG6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eWIJNYiAMrYkcsOo4A8CKxw+oHfMXowYkbOGEfhRCqE=;
        b=SskvAT/qHH/imqxesUS/rkP01oIvlbayZabWop/VkQJy7TIpnH/eIiavUBESrdcDxJ
         mXOOqj85YO1osogDUn3p85SjnsN5ys3ffZghGjVcx3JYsC1i0DSdP1JzfH5jlNUQAh5h
         4BjXh5u/g6rfM3SWq3DAuaafbpIJvtGT7B7wN5BwgrnUOeUih69T+FRl5IXcgkbH2mDq
         APoUx40KZ7vBKSEjSb+nlnxo0fEgVDviSBGyxmS/tsAzAFOFGC/ukrg0yqQ39QiT+SUc
         jiFmAxQaPnZXef7qe04ogWfXjk7dvqZBeD0SNJQDpPbu0qhRR7KBUBdUHZ1Yo2BLjZz0
         1mow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVMJlLVzPU1YzKuy8QHL+X8XwM9Gj1pTpYDoi6MuKFku3hm9ahL
	w2EhFlMRZEQ4YH9GDN/dPHA=
X-Google-Smtp-Source: APXvYqz1Mzy6Lyi9BlcLVFN1jNIcV0LhWGCYIrhhUUb2zKiyoo337338DOYQG8HIzN6ZY5QPaPWUoA==
X-Received: by 2002:a17:902:aa86:: with SMTP id d6mr12124319plr.268.1571430026315;
        Fri, 18 Oct 2019 13:20:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6307:: with SMTP id x7ls2208300pfb.0.gmail; Fri, 18 Oct
 2019 13:20:26 -0700 (PDT)
X-Received: by 2002:a63:6f0c:: with SMTP id k12mr11523129pgc.97.1571430025913;
        Fri, 18 Oct 2019 13:20:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571430025; cv=none;
        d=google.com; s=arc-20160816;
        b=E0KZEpaMeZgKqBfUmwbh9KaY2SM3KPPRcIFHL4WZMGFfvFRX8xdiy/WFQVOETnwyli
         8iMzIrVdvYMGQl+m/3o2scr64jcrm765RT9DjFw2Vw9KebJUExlGJ1A1MFsW9FnaGj0n
         Ir9CkTvJudMyzzdkMB6It1lMHzIOPuLuEzKzoLKZrSRqhEHpaJMF2QQ5O+zauN31MUmm
         BQEP2aGV9HEkbc366agks7CCqH8AdhGS5T0xwTiMYN++5uJ51a7bZTEKcL3Rg6Hqsohg
         tDZj7vNc9tRN5ute7lY0OPXn1EuxxWVCvsKVY4HihwhgyyUQK61nXJqVGlcnWF0wiTsE
         UVUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PaRwAXtJgrQcL33w0ELl9N1b1N2XN2q4Z3LHARsIaCw=;
        b=zTejNsih6fIJLaSN6fOWqdPjnaSfmyC0FVyx/cCb3TGMc2jOWaUnTGv5QETXpaN39Z
         HX7RdqVZ339Bl0ZCg1uzjY+fG2dZwB58F4PwDXKlUNEWpdhUOkhaa5sT37ccd+DBnTmA
         rgFY4Ur8mqBSz904TtT3FtLF1fhQTXyrErFfBZjABzBYDNw/EfhP5foHtOKGnoLhneyy
         megUX/YkfNCTBv0NKWBQXhVXgpkvnHNVej1SQd8o05IsuGujE9VWHxD7UtHKZgs1Un1X
         Q8Zxm+Rj2rhh1006Euz9EpiHQDIFys4q766/F+259hZ8mrafz+7bZ7+L3Wz7wyd/+JjM
         L44w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qu5kXunW;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id x137si288347pfd.1.2019.10.18.13.20.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 13:20:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id k20so6289861oih.3
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 13:20:25 -0700 (PDT)
X-Received: by 2002:aca:54d4:: with SMTP id i203mr9716683oib.171.1571430024899;
        Fri, 18 Oct 2019 13:20:24 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id j138sm1635772oib.2.2019.10.18.13.20.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 18 Oct 2019 13:20:24 -0700 (PDT)
Date: Fri, 18 Oct 2019 13:20:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thierry Reding <treding@nvidia.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [thierryreding:for-5.5/dp 36/124]
 drivers/gpu/drm/tegra/dp.c:123:9: warning: explicitly assigning value of
 variable of type 'unsigned int' to itself
Message-ID: <20191018202022.GA28565@ubuntu-m2-xlarge-x86>
References: <201910180207.T1sJXP5B%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910180207.T1sJXP5B%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Qu5kXunW;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Thierry,

The 0day bot has been doing clang builds for us to try and catch
warnings easily and this one showed up. Mind taking a look at it?

On Fri, Oct 18, 2019 at 02:23:09AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> TO: Thierry Reding <treding@nvidia.com>
> 
> tree:   https://github.com/thierryreding/linux for-5.5/dp
> head:   c80326581f9bf16162c2f3d5dcc5f006bbc93f86
> commit: 868c1d8c814fcb82368383c3a19aedc6fcdd411d [36/124] drm/tegra: dp: Add support for eDP link rates
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 1f5823b788037b0dc8c846a22ef6a5a8a0714af7)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 868c1d8c814fcb82368383c3a19aedc6fcdd411d
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/gpu/drm/tegra/dp.c:123:9: warning: explicitly assigning value of variable of type 'unsigned int' to itself [-Wself-assign]
>            for (i = i; i < link->num_rates; i++)
>                 ~ ^ ~
>    1 warning generated.
> 
> vim +123 drivers/gpu/drm/tegra/dp.c
> 
>     95	
>     96	/**
>     97	 * drm_dp_link_remove_rate() - remove a rate from the list of supported rates
>     98	 * @link: the link from which to remove the rate
>     99	 * @rate: the rate to remove
>    100	 *
>    101	 * Removes a link rate from the list of supported link rates.
>    102	 *
>    103	 * Returns:
>    104	 * 0 on success or one of the following negative error codes on failure:
>    105	 * - EINVAL if the specified rate is not among the supported rates
>    106	 *
>    107	 * See also:
>    108	 * drm_dp_link_add_rate()
>    109	 */
>    110	int drm_dp_link_remove_rate(struct drm_dp_link *link, unsigned long rate)
>    111	{
>    112		unsigned int i;
>    113	
>    114		for (i = 0; i < link->num_rates; i++)
>    115			if (rate == link->rates[i])
>    116				break;
>    117	
>    118		if (i == link->num_rates)
>    119			return -EINVAL;
>    120	
>    121		link->num_rates--;
>    122	
>  > 123		for (i = i; i < link->num_rates; i++)

This could just be

for (; i < ...; i++)

>    124			link->rates[i] = link->rates[i + 1];
>    125	
>    126		return 0;
>    127	}
>    128	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018202022.GA28565%40ubuntu-m2-xlarge-x86.
