Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYFLSP2AKGQEV74BKMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E5E19B4F5
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 19:56:49 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id x189sf283543pfd.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 10:56:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585763808; cv=pass;
        d=google.com; s=arc-20160816;
        b=u+RhNNNLbnl66KQL5RAVk8avzPuS8dOu4H2Jba6ls1PkWsfSvlTxwiViUhO5N9U4w8
         rqF8YsBOMWGMVowLjGNA6eIiGM+SrT/eWnnzEjnokRIEOdNaIBfFMajbGEpUbhuIIov1
         2XetiOcrOOjpMuroTjDID0WUXkA5nfdba9AoHqkLI22+QN2Vzy5+PF96F2pjPCmqqvoM
         2Ic1ROgcakpBixlWre1JZiDUlEcB6ihyfQiXBDRttoKRCIaIrSBUpe1JS9S/Ide1Fljo
         YGS8qyDqlscygdPAsMV2dkwYDl9xUVK46Y18At4RM3ididG67lhas+t0P/C5pGqzPh7v
         FM6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sRLyFvogWx8l1cAdrhCJLIfJ3rK7mKRQbUCg61ckREQ=;
        b=oWvOpsFt8jx/GgabIGSNgZUPMOG0vMvcTCRU2xiFwCSfEn9W0Zej549ZBaJCoK5Qs7
         aUQvmlm+z+UshHNJtjesThO9WM4WUZS+t5PXFa670J/lRjDfCVzS7XO77GBCzd9gE4TI
         G9NEKqDBCkaR+EQv28oxg+M3G5DTeL1I7jIqqg/0dYu6PdFkIP9rwy9rM9ODIfKgU/T9
         Uvd96FJBoehgE630xyESDmkDD1I3m3Rd6gGKWegQZXSTju9TObIVCGidHQNC8QTOPdTp
         TzuZvVGSfLmoUKV4EGwYuq9tv0tgp3GVwnUQvLWKQo2Xkd5uvmvhfklRHAkpFXdo9Wi5
         mnnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ajSmIzuv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sRLyFvogWx8l1cAdrhCJLIfJ3rK7mKRQbUCg61ckREQ=;
        b=pTQBHedAByb7BQaWYpc92kzo1PIBrZfTZY6Wp75ZOid3DUiQzIqtxnKSXNdH5hnj4P
         LfCZUMyU/RIEhKdSbBjOhcC9wqDSw4xgHGysT9BZ7So+mekOogTJEONg3GMvIIq5lti1
         lpEJorQ4iv6zxmKWoA1HG2MzA2JFgw4NB8sv0SZHMz0Zegq38rWFHfXtk3PKLHpRHL/v
         OEkJBiY3jo/ZFAL9KtHh/mE+kBVJm21NTpYbfhVIayYsGavKorw4jyxQDx1bdMyR+YCK
         Z3MPlUF4iXGxnbFfwmlv3IQ5b+8vSAYm7LsgVcbb2IpWXDkk2XE7S8xkObtfateqRBVn
         2/1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sRLyFvogWx8l1cAdrhCJLIfJ3rK7mKRQbUCg61ckREQ=;
        b=UvNo1q+IibbeeIpF6eqnbxozyjylWhMWy1UNZP8S3X8+1JQ75WPh0el0XARx1H647W
         q9KzjKZyUmFFXF+8Qb3r0mnPnZrbbLAYYL6bcoV6zP+4XHVgu2eipgSrzlP4Zth4dLct
         27zzCfJxXCPmxB5JAHG+zNVmO3YlNjMOvAhzY6vwDCEqqg2lFKo8PZiPnLeUmMtHq5JA
         M/68x1xL0KA27hINcj4LqW179vs9f6YEmNgSwfbwbtM12bWSf9aGFsydX8qlIS+09fWG
         rgHn0cOfbkYQIGlUM9kpETvXkM9KIS9VEXOyczpO2Qw9cJ3NhSELRq+c1umohCR7Fqji
         VWEw==
X-Gm-Message-State: ANhLgQ1C+PRimnBumVwL+23NwrUP/MmTVqi/NqX3GJJdON8Nbdn8YMay
	lDQ0v9YatFoN67dMqQXJ8kE=
X-Google-Smtp-Source: ADFU+vvwk20A1pkoSEKdQH8w/PrG+HYWZHP9dkOrEO0AXQBn3NPDpmIZdGV6dxb4zTHJiENdPQgmoQ==
X-Received: by 2002:aa7:953b:: with SMTP id c27mr24901625pfp.201.1585763808536;
        Wed, 01 Apr 2020 10:56:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls210567pfy.11.gmail; Wed, 01 Apr
 2020 10:56:48 -0700 (PDT)
X-Received: by 2002:a62:2f46:: with SMTP id v67mr25383224pfv.7.1585763808029;
        Wed, 01 Apr 2020 10:56:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585763808; cv=none;
        d=google.com; s=arc-20160816;
        b=hQ9IHvCvFGiq8t7ma7B6mIOAMABmAnO/dacKOpFe1Gx+WTJxpm7e1TN97EM2MSyM9V
         IZa6ZQgejlHMDAjsG+G4Gl6teWYOQIUW7a1iCjP7/aqxAnPIYo5RZR6A9QVKP6G8yU3Z
         GHhOFKMVx9MzTzNvjg8cnSkwZNjjTboXgq93nPchBnXRuQMQmr+xk1EbLB9hYfyNzjwB
         PKT43E4kyUGU7ENoQlqj3n3ApN8YzGlWYX96HbNxR9jN+l04a1qhGcq7WmS/Kid/5Ovf
         QPZY0kJcSc1E4Xjxv6kpYFlr/KBngG9ydUcuvLWfljaP8rN1/vJRz/Pa+iADLXjlpICe
         /wsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yI26ZhrOiIL8spNhsxWYK6f9t1xQ5Sm+6ZAEnI+a28A=;
        b=qM5xqzGGTjD0mq6Wd09+3uhOJOn8XU+NO+aiY4IUY92nHptXyXlpOhQ5eWf0GddMzm
         DmBEpqQbibYmVAc5ysUHKLlk4Pvv9JI7k1otAyP+M4s17wua7346zNLLNhMk+VToHmDt
         qygsTuSS9DkI5MRAovQKx5fANNMy75NTXGLaqqvbJZrwMZ/X0X5jlVHWepGRmU2ZxQP9
         pcSb2apZm4fR11aTk7tKXqKOXbuUi173TGjaUTqLcEg9/eU/CriMr7wqej4z1YyZW8zm
         rcZ8gIxflN8XmfdMVJmoTOtc8Rb4FiooomY3gcGnYFJYuXxWRtp/q78MoYgJV7cRpEUE
         Zh2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ajSmIzuv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id r76si137745pfr.2.2020.04.01.10.56.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 10:56:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id z3so354511pjr.4
        for <clang-built-linux@googlegroups.com>; Wed, 01 Apr 2020 10:56:48 -0700 (PDT)
X-Received: by 2002:a17:902:22e:: with SMTP id 43mr22426728plc.119.1585763807025;
 Wed, 01 Apr 2020 10:56:47 -0700 (PDT)
MIME-Version: 1.0
References: <202004010505.30nygaXZ%lkp@intel.com>
In-Reply-To: <202004010505.30nygaXZ%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 1 Apr 2020 10:56:35 -0700
Message-ID: <CAKwvOdmaD1c94WFK_GTfm0Egt6=Ck8JcwqnYR2ibsxpvG+o2mw@mail.gmail.com>
Subject: Re: ld.lld: warning: lld uses blx instruction, no object with
 architecture supporting feature detected
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org, 
	LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh@kernel.org>, 
	David Gibson <david@gibson.dropbear.id.au>, Philip Li <philip.li@intel.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ajSmIzuv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Tue, Mar 31, 2020 at 2:20 PM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   42595ce90b9d4a6b9d8c5a1ea78da4eeaf7e086a
> commit: e33a814e772cdc36436c8c188d8c42d019fda639 scripts/dtc: Remove redundant YYLOC global declaration
> date:   4 days ago
> config: arm-randconfig-a001-20200401 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 5227fa0c72ce55927cf4849160acb00442489937)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout e33a814e772cdc36436c8c188d8c42d019fda639
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> ld.lld: warning: lld uses blx instruction, no object with architecture supporting feature detected

Apologies that the bot is repeatedly converging on this patch; it's an
artifact of us turning on LLD for the first time.  This error looks
new to me, seems it's a randconfig.  I've filed
https://github.com/ClangBuiltLinux/linux/issues/964 to follow up on
it.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmaD1c94WFK_GTfm0Egt6%3DCk8JcwqnYR2ibsxpvG%2Bo2mw%40mail.gmail.com.
