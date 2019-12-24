Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTWEQ3YAKGQEYGJMYDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B860129DCE
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Dec 2019 06:29:53 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id f10sf9376285plr.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 21:29:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577165391; cv=pass;
        d=google.com; s=arc-20160816;
        b=vQinhLUdcXCrpdNZispr8HmSmL9R+CKblWYZoxN8AcFuraTVWe5T+oSvQdR7SPb4Sm
         3s5dzx/fS5/w9Beg9HNUAHl0tdXUjTM5wW7yPjhG8qGA3e0J+8i0n14nqK5b7iY5X6iw
         KDSf5yrgpuzzuAueXShC2x7BgOqTZgYPjUAl3AvnN3zriopG25nRRhMWF/aXM9gu5g2c
         rQw8RO+NIdCiWhGuMQpJ8PsA3uHBj7nXlK3TcgnQobzNTRFoGJhNjfGZ8TyYi2IH8dVI
         udvf5x4/b1MxjUlC0vQWWtYzWoM2GyhJtTC2H3nd0vlmHrg3W8pKDxdst9jP37blDJ2S
         IpVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Mgk44JZ1Gk+J60LO9P1JthmR9aM/HzOr2+g5nYjN5n8=;
        b=thw1El2mCEQ5Gh0SBgKy2UswdFjMg/vr45Lf5Q7Sy68oElHNrPKhAe2QlvElZK3wiJ
         oFyAWfcXG3zX+uavfcrVzx+mr43VGuZqr13VnylhSYEOcT8aqfoI/xxTxRBaU1J1j1s/
         OZUCM/EiF3H08/xD4l1vdk3ITP2nKyQeGuuNvK0mA9KeinmCcGo1aSdjgvWJOYhJT8wV
         N8H7CFtuCvSUngBEGRedr3InPPapDdBBDtzkZOl69vhpk7CRlZuodD2r4Sdykqd9p3V/
         jnf0iT7ER/OulrmunhVcKEW+kMc8m/bhqzJ1cS1RjvVcNcGsyRpnYEL3oQqZS2GuiCh0
         WaWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OXcMGRKt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mgk44JZ1Gk+J60LO9P1JthmR9aM/HzOr2+g5nYjN5n8=;
        b=P2fpFfuKzdNK16HVNPqigMpXB/b3hPCrd5LJDZyh9CX5kT6/SVlq0x+N2vwQrvpT0A
         VTTf9odYlreIOXUga8ZXZ6srgYnlR2bfMoTbnrEpaEw3M2dWxPaBGA5MXfYuqoRbx1C5
         JB6UwkN2oUQTjaI68EFBno8fJFe6UV0y5KQGDTsddbr82SpUNzhKf8vChBB3eFyic0kQ
         GzHwNdpdI1LEmPnOwd/wYDAsF59bnF4u9nz/meF45u7+iX/vIzGk7z93x6EubgARIXYU
         UwHXQUgepQNgiE+Os7gtCDybdS9lLP1OqOvZCkpCd6nvcwj8CHOOOVmcYNMxJlp4oD7n
         PP6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mgk44JZ1Gk+J60LO9P1JthmR9aM/HzOr2+g5nYjN5n8=;
        b=IEjjil3At1T4IsejlOQEnP9q9B1FKC4CISZTRqDKPqJQLeAAVuPNbcXVMV3WrWB8uX
         nrnkRlnUD7H6VVmdVLtl36jm95NLBIULLhcHNNURxdMGmoVDN+MZzLxYGG8EP/cv6vvG
         +qZIPIoh1hoL5VzK+wZyBuurnOMJXFy0OvBCK3l37Kd2kMklf7hOhWq0j51Ee1j0e8Pc
         q5ClL2GEhh8Gi6rXCcF/fv0+xj2OkQVfIuxy3c7ztfCLc18y0qHS2/soUf1E2AfpO9a0
         4eHHeQAvRmzUZi4zGZxICj4MhHdMn7d8eKzfGMvDZDxtaI0AgxJ8ty7OOt2DdWY7lX1L
         Bltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Mgk44JZ1Gk+J60LO9P1JthmR9aM/HzOr2+g5nYjN5n8=;
        b=lBi7mIv0aV3UABDw7J47XY2zw/191EiPR0N/YU01yLhzSOMKFbGcNG4O9bD8N31LBV
         P7aEY637xHrM0sdDIuHTWmLXY32TLn7pJso7eg5SCZYFntDK9ni+QQ1R+rvMeMzoJMiT
         b0jimxhXkWqau+H0m29QJTWXstcKMPfArumyx9N3Fu+2czcr2S7U5XELFbE7xCr/cgP0
         XZVcN8fYzfnq/vumNzqYH4/IOktozeOLkWunlbgeJNZ0PDPvcdarPlNCcH5m76wWTOFD
         7lifbz35/Zw28/gR9AY34Q38+hhEHx2aQv7cDCXLM6p/xwMaSr/ZyZwCoLzwHMv+H9NE
         gMPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXvXerNy/uIznHr5gRDjgYeBuglkDbmXBwCKquu5lCcWHmdb23L
	y0wtPjkujKOCAys+nzMAyRY=
X-Google-Smtp-Source: APXvYqx65h6+jf9vO04Ijpcl16mdqHajIkX0t5Iocd99Tk71ekLkQ/4njRM3bPHi17d9UyaJ1poRbw==
X-Received: by 2002:aa7:85d3:: with SMTP id z19mr36213751pfn.62.1577165390988;
        Mon, 23 Dec 2019 21:29:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c8c:: with SMTP id t12ls4909350plo.9.gmail; Mon, 23
 Dec 2019 21:29:50 -0800 (PST)
X-Received: by 2002:a17:90b:4004:: with SMTP id ie4mr3648960pjb.49.1577165390652;
        Mon, 23 Dec 2019 21:29:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577165390; cv=none;
        d=google.com; s=arc-20160816;
        b=WGOul80X0qoxDJskKVBlPRPscIVGmqB5IcPzjukaZWQQBrtFq8TAIZRYzWf36ZYpYi
         f5W7T+9Ses+uMSdpMqYIrxBANUjRzbIkV2HOlvIezNRiIgUsqz6d/sc1bKuBMQmtgMLY
         Bm0vdiI9u7E5bo9E87rz02yCPH7giReuH2ATzEM8MpWcXwOZ8rmzjF/tbvOvMKud0MbX
         0Y6yR7Hy6QWhXyATGpkFfEg2hKlK2bsQHQzfQz0TEoj96aG4F5m0FaphNv68YH7k4Fzw
         8UjSnwxz3ou+GIOtvGy049Bep+YT021gmAbHBGBGoSxfuirVL746W++r697/ghXLQfUo
         sL0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5mIHnK6BEXabOhDkyqQEsS+XZ4SjPH+Ikpu6wNoKfTY=;
        b=mPfSqsQ9Lh5xkAi/+X6dZHWxWcT8i0Q2uxJ+DWp4sHnl0O0igKK+0qU0VKByLyrqzS
         LQxNzQ/cZl1sPA8YQePPnIBoiFcHsKvqNsIZXuogzunMkqa9BE98/eFZ5cxKC4ioH4yB
         5OV7rY2f/zP5mKMaMTA7cxfIT/Im9KGk/DGXb4vDtIU9Pm3reUyRi/A1vqL7Vnu6mLE3
         OmrZNyOE9u/UGWVu5a7HMxHYYZbZVZ/RzL3kc2tIwglKFShhNLdFr1EHa82YD+zeKp08
         l8PMW3gKXmBfd2I8CdmFMydTA8ecbjfbMWlQlxV1ygtoMm3ynvu4kj1u0EGsfpkPNKn3
         AeuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OXcMGRKt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id r18si976506pfc.2.2019.12.23.21.29.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2019 21:29:50 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id w21so17195859otj.7
        for <clang-built-linux@googlegroups.com>; Mon, 23 Dec 2019 21:29:50 -0800 (PST)
X-Received: by 2002:a05:6830:605:: with SMTP id w5mr34268557oti.79.1577165389758;
        Mon, 23 Dec 2019 21:29:49 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id p20sm8171116otr.71.2019.12.23.21.29.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Dec 2019 21:29:48 -0800 (PST)
Date: Mon, 23 Dec 2019 22:29:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Rahul Tanwar <rahul.tanwar@linux.intel.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
	mark.rutland@arm.com, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	andriy.shevchenko@intel.com, yixin.zhu@linux.intel.com,
	qi-ming.wu@intel.com, rtanwar <rahul.tanwar@intel.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 1/2] clk: intel: Add CGU clock driver for a new SoC
Message-ID: <20191224052947.GA54145@ubuntu-m2-xlarge-x86>
References: <cover.1576811332.git.rahul.tanwar@linux.intel.com>
 <ee8a8a0f0c882e22361895b2663870c8037c422f.1576811332.git.rahul.tanwar@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ee8a8a0f0c882e22361895b2663870c8037c422f.1576811332.git.rahul.tanwar@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OXcMGRKt;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Dec 20, 2019 at 11:31:07AM +0800, Rahul Tanwar wrote:
> From: rtanwar <rahul.tanwar@intel.com>
> 
> Clock Generation Unit(CGU) is a new clock controller IP of a forthcoming
> Intel network processor SoC. It provides programming interfaces to control
> & configure all CPU & peripheral clocks. Add common clock framework based
> clock controller driver for CGU.
> 
> Signed-off-by: Rahul Tanwar <rahul.tanwar@linux.intel.com>

Hi Rahul,

The 0day bot reported this warning with clang with your patch, mind
taking a look at it since it seems like you will need to do a v2 based
on other comments?

It seems like the check either needs to be something different or the
check should just be removed.

Cheers,
Nathan

On Mon, Dec 23, 2019 at 04:48:54PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <ee8a8a0f0c882e22361895b2663870c8037c422f.1576811332.git.rahul.tanwar@linux.intel.com>
> References: <ee8a8a0f0c882e22361895b2663870c8037c422f.1576811332.git.rahul.tanwar@linux.intel.com>
> TO: Rahul Tanwar <rahul.tanwar@linux.intel.com>
> CC: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com
> CC: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, andriy.shevchenko@intel.com, yixin.zhu@linux.intel.com, qi-ming.wu@intel.com, rtanwar <rahul.tanwar@intel.com>, Rahul Tanwar <rahul.tanwar@linux.intel.com>
> 
> Hi Rahul,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on clk/clk-next]
> [also build test WARNING on robh/for-next v5.5-rc3 next-20191220]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Rahul-Tanwar/clk-intel-Add-a-new-driver-for-a-new-clock-controller-IP/20191223-110300
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-next
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 891e25b02d760d0de18c7d46947913b3166047e7)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/clk/x86/clk-cgu.c:50:20: warning: address of array 'ctx->clk_data.hws' will always evaluate to 'true' [-Wpointer-bool-conversion]
>            if (ctx->clk_data.hws)
>            ~~  ~~~~~~~~~~~~~~^~~
>    1 warning generated.
> 
> vim +50 drivers/clk/x86/clk-cgu.c
> 
>     46	
>     47	void lgm_clk_add_lookup(struct lgm_clk_provider *ctx,
>     48				struct clk_hw *hw, unsigned int id)
>     49	{
>   > 50		if (ctx->clk_data.hws)
>     51			ctx->clk_data.hws[id] = hw;
>     52	}
>     53	
> 
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191224052947.GA54145%40ubuntu-m2-xlarge-x86.
