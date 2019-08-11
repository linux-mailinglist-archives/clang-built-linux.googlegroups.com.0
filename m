Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRHHYDVAKGQEM7N6MNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9670E8924D
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 17:27:01 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id c18sf20017061lji.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 08:27:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565537221; cv=pass;
        d=google.com; s=arc-20160816;
        b=jpH23WL9KS0edzwqjAtqV08WnHZCi94Ml04TimnfUBzeiH6YqU/1V4GZOWjwXVxKgD
         iL9qFmeHkZ5B60zpmJIdqAMeYHHZkOIgMopTYoFUE8goxiISXQYpzeCT8khXd3bZ8Fxv
         0uaGlc7SSWDXqxdcxTmzjuHgUfnAFdOr/LULawN4kXcqukALdGdOjUnkk9zSXqcCi+Oo
         Ah+yLPe82IK3J0tqJK9RYn/gInEKZQt0FGowMzQtWB/vpV9Jk+gjRI8nKjfIE0J5X+ns
         OOUL6HN53aRD/UPiMaDlD2k0dvoHto7EhTRus9bMYIwVEaDFcxM+gs6ILcW8P/dUuPR+
         XI0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Gl+sME72tpJGQGqKckZi8hY9XKGj/AchcSXkZG9pQn8=;
        b=NdSuwdFmtOK+MnFo1ATq4WR9bveDvbCKXCcPn8UsshKKazN+p0iUwu63NnwW6ulztd
         nkrtQ7EghLTdW8bkREU+vWyPzMFnWlJ5KLzKk8OAiY+20zbz6TMbZCtOzOJ8WWhgw+Be
         +S0dnTlC6H3/pW7WyLlboYi7xTxoEIYEKKPizQkrxJJWbCYTvrcwzCUx3syWjuUhm8Bw
         2fIb6Bxg7Gt7MnuOLlw8tjyqh6RzA78PT1MOwqbA8bYQ+LGxe2QkIu5eNi3u/9Lk3swC
         4gfJ1zuu5/wI+LI01RhSHLDbRNSm++144G2A5Otu2yuszToYVqAwJqRPhwi4iBlNvMbN
         iWTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kcTMSw36;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gl+sME72tpJGQGqKckZi8hY9XKGj/AchcSXkZG9pQn8=;
        b=N2BbE/sxGOxhxEa+e03DpizkDgeCuC53SQ4iGsfzMI5FnTpDC5JiJ1vY6ubJqJwXz3
         CmH7luS3kTQvApmBqF9No8Jrn4vZlI+TaBBmIG/SU8UTZ4xOs2y5x8KUj2jry9OgmlMr
         +LFfPX8Kt0LjymVJGEHfgi6ctB22OJL5FoqvB1ksEmMaYQujttn0PmtU3xbBeVlShGUy
         yqBIkSWca2wA0sb7rbz+HXLlyE7e49Uzy9HWyaxyc3Y6MB+FFnZ31Sr+flXUSn+NoYjn
         DhsyJ2ha6fGgyAHux9gbt6FxYUjwOVmT6dvBlvKZ/R/tITVmzgK/vLmD4DUyrfKFLIyw
         MbMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gl+sME72tpJGQGqKckZi8hY9XKGj/AchcSXkZG9pQn8=;
        b=My2W91eGb4PnFnLFHmy8mr9OrBc+cpC1tDLWqhl7tjnwYqBJt/meoGNAsLgcEFEXLT
         YMV+qUhzMS38BhGKOR5CU9fKq91jjxoEKDBqEn7vvYnHhfg7h2pJkaJgA7gfGjg+R9j9
         ybrqsZPnk0I+fyZLTfwc8i5ZNhSPEAD2wf6DfyXGF9eXMJfnl7h8ddFDi/tze0q5SEKS
         zUFPsV3kVr8knL4gYijo9Ntih8U3YnBadjE24N9DXfAeS/XZqvaW29hjx2EAIAxkNc+Q
         pZUqDe27F115L2DZIFPKhvqFJbJgUQas5HbeCJGxxkXZexJP3ev4a4140Evfm+ll7zj/
         iQoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Gl+sME72tpJGQGqKckZi8hY9XKGj/AchcSXkZG9pQn8=;
        b=LozsHJClQmJlBW6SPl4vl0M8tGlPAVgwXdXVoAkq/JmIQ89EdnTWgJ62E78L5fVPx5
         lz6Q7rpbG7Ubnxsilv6yKs/dQCDWdHIAbv0p3UfnQdB1gWqqWNF8DUu39vRlyIe7+wym
         Bor5hBj9L+BJEHjh9QtvtbMHr3bxLgWhSmuJw0Z7KrTfnexadJxfkjvHchYTKx0G0ZUM
         sWwni/qkgAGdj0r2HwuUWJwV2zMRaL/SAp//SmXBd5WLn47Nc05HBRmyLJwosYqynXbN
         J2Q1FxmYC2TdDWYTI3sttSORehcdP6O3mxLLH6a+4QwDQDgPOPSINqRRVlTqxPsU2nlH
         gqeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUv3WkkRue9/rwsLCAAQWAM5H+yE7Y7so0+VGgxTkhBSUaDJuLD
	di9huR2nKgdCjymBzKSO2qQ=
X-Google-Smtp-Source: APXvYqymP8dpOM8O1RIpdvbDf4N8G2jpY2EY0QnxX+LeGFwaEN4MDKb2t1FCjxYtCgH5h5PPbyFYIw==
X-Received: by 2002:a2e:864c:: with SMTP id i12mr2594588ljj.88.1565537221129;
        Sun, 11 Aug 2019 08:27:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4ef:: with SMTP id s15ls116893ljm.14.gmail; Sun, 11 Aug
 2019 08:27:00 -0700 (PDT)
X-Received: by 2002:a2e:8945:: with SMTP id b5mr16279898ljk.93.1565537220560;
        Sun, 11 Aug 2019 08:27:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565537220; cv=none;
        d=google.com; s=arc-20160816;
        b=HY1/Frd6Na8IXgZW5/UruA8e96DqLCaGVKs4Q3soGDWqYDjh1CZpn0m6Qsut2WEqvw
         U0B8e/nUqzThNvXUIvAGMTHBmObI6Kscz6sOInl9eYVgNW3IofDdui1/p5vPeEynZk8l
         Lvf7Zq5Pc6X+tIuC3QZbZyANpW7DB3HUUwd2cGURXbhemsfLVMOCDt16G0cLEI/XRs2N
         3Klt49X2f03+KPbQHy3QMEyiITWlzXrbzSS5ckFQKIoDCCQhOjMXN1S/ISOof3SVo9+Y
         NueQMOHGIjoER32pnoTFQ3rZLLkEw6NMduFUZR7VKtf9uZby0qk8Zb9t9bjo9NlUJA5z
         LLEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/PUMGNpPPR6ki3psOlb3N2qRWLGrvqTV2POSfkax3yA=;
        b=a4wgTD+DDZy4j1OxPHo7o3fbF3CSIrvdGox03PvdSQyKHujYuYgSD+9feGuxem8mUK
         ntl5QMh3SltZirVFWxBSW/Iz00p0wE6w99fDTudxgA8LQJbCDPwT5Ia4m3fChdIKMhqw
         /pW10A+uhHbCZ4N198WFTOJkFcLAPCZJrA7i8pIgAtdqTkHm76TknVlpw4WfrM90XnCO
         +/gW8qb/OubY2Z0JUrqViWEVlaaQ3GDPb3KbTvxY+7w+TV/mmxtLm4O23bdqv2IZYN50
         T8PrhmQGLNhHby9MEjvKdM+LqBzAhH2OAMZq4RFsTy8OuSbUbyhb+mgqBoIToYOphf9+
         QuGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kcTMSw36;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q11si5433106ljg.2.2019.08.11.08.27.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 08:27:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id b16so5805353wrq.9
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 08:27:00 -0700 (PDT)
X-Received: by 2002:adf:aa85:: with SMTP id h5mr25265930wrc.329.1565537219709;
        Sun, 11 Aug 2019 08:26:59 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id v16sm98747098wrn.28.2019.08.11.08.26.58
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 08:26:59 -0700 (PDT)
Date: Sun, 11 Aug 2019 08:26:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [pm:xps13-9380-20190807 11/11] ERROR:
 "register_acpi_s2idle_notifier" [drivers/platform/x86/intel_pmc_core.ko]
 undefined!
Message-ID: <20190811152657.GB78637@archlinux-threadripper>
References: <201908112119.YYNTSPF7%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908112119.YYNTSPF7%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kcTMSw36;       spf=pass
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

On Sun, Aug 11, 2019 at 09:46:20PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> CC: linux-acpi@vger.kernel.org
> CC: devel@acpica.org
> CC: linux-pm@vger.kernel.org
> TO: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
> CC: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/rafael/linux-pm.git xps13-9380-20190807
> head:   23cd54587772e6ff6d98914fd0905c8e925494fd
> commit: 23cd54587772e6ff6d98914fd0905c8e925494fd [11/11] platform/x86: intel_pmc_core: Print debug information on S2IDLE sleep/wake
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 23cd54587772e6ff6d98914fd0905c8e925494fd
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> ERROR: "register_acpi_s2idle_notifier" [drivers/platform/x86/intel_pmc_core.ko] undefined!
>    ERROR: "pcie_aspm_enabled" [drivers/nvme/host/nvme.ko] undefined!
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Already reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-August/063003.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190811152657.GB78637%40archlinux-threadripper.
