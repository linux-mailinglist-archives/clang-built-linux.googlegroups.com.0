Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLUCRLVAKGQEYTRQRBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E30FA7D536
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 08:05:34 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id l7sf7626146lfc.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Jul 2019 23:05:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564639534; cv=pass;
        d=google.com; s=arc-20160816;
        b=JOlQnHakSdwkNfoRjTzfo69UfxWAfrmW51uYM7B31fU+lz5jFLV7Z28u+xNfFMgxwx
         MWQF7UlHqvT+Tp2WYFmP7awBiEWrLCoQwwkKmO6K2wX+Z2WwvzpqCGMeJdHT36czUC1y
         umJApKCVDXuW4BewAwIoD159nEE6zZ2N2rrTu5dICJo+C0kHVgyupiijwFsEpIv14TxW
         c237L4MLPpw16vyxKEBxclr9JnYdXcbJQvG++xZjhCRaATSvoRMbpLKPzhpNZag29KGO
         87iXDLpUdZi1ox7GmKXn9lpzu87U37MRHxv52XO+6qr+GkrQNTunjZWKcJYU5Sda0p7R
         WbCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=9zNu6w9Ceij4z/qCZD4CmKj8Qc/C8gLo73TPLIXtLxw=;
        b=gsrnJu9ApVZIJq46uzETcFdiRVElN6j3C9SBDHEW2OKBKGqunIlKrUB3u/mDVRJXny
         DG0CoraOJNfNyAUSGNGq95v/kyhcUVbtU3ot4pIzZ2Zx/UP7MVOnF5KOqBHyYEJSxbDa
         n3bvIC++NhINnK9Rj2fyhAwrsL2t18JYOlgsSiPhDiP3pJown/oJCiyUb/Cx8nBxzEzw
         rdm11chQeNDErhmTngvHBMccR8kyQTvHwXWjpX17J6UDkDvM5iU06xJWQCMr2g4bMsNk
         LdFqs5rvOsOBv+YFJmOwZOgCibLk7jazgPExCRwP03grZwmp7T7Bsc2RdovSxuisxL/Q
         bH2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AGv0+XwQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9zNu6w9Ceij4z/qCZD4CmKj8Qc/C8gLo73TPLIXtLxw=;
        b=Jps2aXpJK3sC27xZUIN2EbaZj9IoOAAr4WhYAbZ3IURob8DGkl+ykyGIcewX6hXdd+
         r5xuj52jubsUw7r0byzkFLoXATrAvrAUkhJgJWa9m8vCIyjOcgEq1T8YmfQ75IrYnA6o
         21PpHsiWZEQJyIIuard8iYv6lV1SRR1ppHcJfQBGB3xNyllVN85eoOSMCQ0piotxU3LO
         5k1emluBR1h+Dj7NneQvL+HmkfFu9Dq67sVsx6ufG/pT8M3jHx+7sMqYwb2imZLIKqMR
         1zn9pZEeVEJdjYWBQyeZ7QuR76okYx7rKl7L1cm0T9kfMMdD7JV07udGmqxE08+FbHLL
         1xNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9zNu6w9Ceij4z/qCZD4CmKj8Qc/C8gLo73TPLIXtLxw=;
        b=r63Jj33FPKykI2nZfSD7XfFEXYVD1gDm5vZuT/xTQiZN9Sy4cy2pYfDIPE3tlHKEiI
         geI4A3Om9QLnsyrVeasY7NdvwWpTbRUle7LKoXthM1jOvDomgKVJJRcJB9Zvr2Ztqaju
         2eizxss048J4xazFCtSKJLJDMCH+Rtca4dPY8QSoDRjRhKchgRZnBuNJz6qa6ohT/n18
         HtA/68niwr/Ewll2TFdF8DmPha/N8dFSTnxmu5N1UASTBzuOLgg0kExhF5w0pdgo7r36
         inHPfF05WIEpny8kfd9hjI1bvvHxcIDFG8NCQH7YVvT50oIH1tbEE5t2l1ukIEGKrm8f
         yJhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9zNu6w9Ceij4z/qCZD4CmKj8Qc/C8gLo73TPLIXtLxw=;
        b=TIrkzgTs7H5tQDGtHG51W2RUxsbD8ITn5psZwCQT+JB5UJvy7lYAbGb16D1Ql41dwA
         4HR/BsjP3T8Cq+FqcwtaKIxelrkFbbkRi57AUcwGYSiTgpJDB5SqlLO+Ch6eYL1JPymn
         QLVWTx80AvpoXwaG6tThKK7BUgv4SwgzwZiqUNWFPl7oeDcqkPdiPljzppj18PI+6C/b
         WYP01qNeyUXhT15E8M2tozhHgUhfs14yf/t3es6BbJbXjB5dVRADTjuS2QqlyH5FIN7f
         b5wzDJqfFZiZVBaKt00HlQAIWJAwZ1h4tvxQVmI3nr7IBXzW8kox+k5hj3taACCx+ExU
         TZcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX3OnwRyI6Nv4FI/hiPMBdqixjoPM9TJhYVRmtcweFQ4cBSI1Gt
	5o1/4Vek0WEaqLwpH7VzMpg=
X-Google-Smtp-Source: APXvYqxOIMZ3CfwpvzgMlHHWmVQ5n5npHja2Wd0dQKGQXkFV2b62kXowDeROfwTQvkgzRfh+s27hMw==
X-Received: by 2002:a2e:8613:: with SMTP id a19mr23327104lji.163.1564639534458;
        Wed, 31 Jul 2019 23:05:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5307:: with SMTP id c7ls5905600lfh.7.gmail; Wed, 31 Jul
 2019 23:05:33 -0700 (PDT)
X-Received: by 2002:ac2:546a:: with SMTP id e10mr61059077lfn.75.1564639533703;
        Wed, 31 Jul 2019 23:05:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564639533; cv=none;
        d=google.com; s=arc-20160816;
        b=S2QBHw6HExGQT1S5QMtMAcfIzIPpst07Mv1sb9WXrT0eUoq8yoJoQrDnWleeMdszH9
         X3O0LZ6KMYzSHIZBvSr4hbgkWcE0RylBvTXUWIiJ3xOOjkmDfqwXyo1i+ZW0j98zZBte
         xt8jGlGg+kVuiUC5JgZ6gY3XBsL6dLy295y8RQ5qBYluwyXBxAwyNkEp8Is+dy5oA4C2
         1u7UeduWKsgTBJHWwO820WRWXpKq41xheLBNkzV0OLMpOy4fYuI94gGQpiWFOutKDyMl
         WYRfjh8vrj4bnt7edUIF4hKBDPgJmAogz8F9lFWILdgiiYTZbT0t/eOFg0SYfbMFAs8q
         H3PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=c/vzP9+Sf/+z+LWfG/1TiIgcrw5udJAyqc+eYcQ9P/4=;
        b=IV1vYo4nFzP5TXoJOMeHg+xZxutcZ/ck2lO8Cz025D9pAJiXTb8CfQFYjGAhlIgBrf
         BNFb2Rynbd5Xr0qHpHTGWKeZgcrN9XGwn/YJW7dC1VUBuiRBAcpOkTES6krG/Jbmi4dZ
         v+Zqyg1zE2MMBkxXv/MeLebylC3AzBTGBzX9vIDrXqBkTTzSWZa5fO/tfqwFtV5q+7Lt
         EaGFdKnA9QDNiRvIsJNYQmJEIUEPKvJCTfutfjblUJlyTAvma6Fdu/HdaeHtAdMks52Q
         nUU6u+AVLyml27cSXlydg2dGDWjmv48uqdPiQXGttlwrpOahG5jp8YyT8IdEp9gEXj87
         CIjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AGv0+XwQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q25si717039lfp.0.2019.07.31.23.05.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2019 23:05:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id 31so72204220wrm.1
        for <clang-built-linux@googlegroups.com>; Wed, 31 Jul 2019 23:05:33 -0700 (PDT)
X-Received: by 2002:adf:b64b:: with SMTP id i11mr3769705wre.205.1564639532838;
        Wed, 31 Jul 2019 23:05:32 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id z1sm81049906wrv.90.2019.07.31.23.05.32
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 31 Jul 2019 23:05:32 -0700 (PDT)
Date: Wed, 31 Jul 2019 23:05:30 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v3 03/11] xsk: add support to allow unaligned
 chunk placement
Message-ID: <20190801060530.GA16843@archlinux-threadripper>
References: <201908010928.Syk18P6v%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908010928.Syk18P6v%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AGv0+XwQ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Aug 01, 2019 at 09:09:35AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20190724051043.14348-4-kevin.laatz@intel.com>
> References: <20190724051043.14348-4-kevin.laatz@intel.com>
> TO: Kevin Laatz <kevin.laatz@intel.com>
> 
> Hi Kevin,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on bpf-next/master]
> 
> url:    https://github.com/0day-ci/linux/commits/Kevin-Laatz/XDP-unaligned-chunk-placement-support/20190726-075953
> base:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/bpf/bpf-next.git master
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from net//core/ethtool.c:27:
> >> include/net/xdp_sock.h:258:9: warning: incompatible pointer to integer conversion returning 'void *' from a function with result type 'u64' (aka 'unsigned long long') [-Wint-conversion]
>            return NULL;
>                   ^~~~
>    include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
>    #define NULL ((void *)0)
>                 ^~~~~~~~~~~
>    1 warning generated.
> 
> vim +258 include/net/xdp_sock.h
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Fixed in v4 through manual review:

https://lore.kernel.org/netdev/20190730085400.10376-5-kevin.laatz@intel.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190801060530.GA16843%40archlinux-threadripper.
