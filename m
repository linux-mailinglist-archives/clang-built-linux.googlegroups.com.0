Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHGW4XVAKGQERYRQEQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 7871991778
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 17:13:33 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id a17sf3830287wrr.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 08:13:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566141213; cv=pass;
        d=google.com; s=arc-20160816;
        b=wBZSDF3/ZP6zezuI//Psr5kN3fEPjzm+pzAR+lMHzt1fZkxjYvJfK4ae7bnY4fvdaa
         WTxP11tvqn7a+a8qVdeD3xez0QRsgtLQk4mqOU78a/+3dgPNKNACQBRYsOirlbaLkRs/
         ToD/vBrikbd2bKvVWs0rRKQw6UTRjwp0wqb0/b6h2pTOUIFqPxBDn3h9GjAe2nfb9XQt
         +77D2uOpQPylPnQGdOg+sH6tkTSiqTmEIorNLKp7Bey+GkxIEsmHVnBElja/0cDpYojE
         BnI5jF4pHuv7MEdtjLPurVtminF0gzxIwIVDUmBYBIe+iIfEny+NDxrINyCdhGZN2cB+
         4K6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=CGhjB8IfOJTALfh9eIZxjg8Ou6YiEbtTJwXMGnr58lA=;
        b=m+wTz9Qd3JPRgxM/GqAPI+CdCAowsO+xcfUXe4aJ9eb13v/TQbmm20lCiewywSjReH
         9W3fFnvFVaqLzb71enJQiQE24rFUEccRp98FNA78v0WEIBdWJVBa44ThtpF80fhebIgZ
         x4FOwc8eOcldL7BCYFozG9/MbTT4qcakllr+5+hjWGVvRWoBuDp4cGngz8ajLfi9eDhY
         qylEqHfoJZeWdAERLQd0x9G0H7+fsZA9fKznAFW7Y6uO8gphrZzjXRbO3Z8jkYd7m7qU
         ktz/HV6Ffu38wC/++gnEyey3GEcGpywfJTWG46S7kW1Iq7vvms7yap0GTPl7o9mqy60B
         zVIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N+O7zhh7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CGhjB8IfOJTALfh9eIZxjg8Ou6YiEbtTJwXMGnr58lA=;
        b=Q8ywVYa41C9i4zkHttdYpYGea5QqhdPc269h63ztDPskeST8Ts/zSqiISMx1a0KKCo
         EoiE1OInUoN2pxmruFGFgdRuLP+QDj44vsSF/aF3/xT3Azp4F4D3fEoaGPmE7jTUpfb4
         TSaLsjw66WByCx+7J4KBrTO3HkmiY9Wf4jQHCyJTHc5pkKEP0ZriUEMqNa0Pr0AyJO8l
         khvMB0kh7vFrLuz87IMeKWl6kr6jMBZR5jaNf/f4OmvXgbBsSlG5WmtOY/6EQ+4BFrgw
         jgZpO4HSZ8A3xGCWuqqZlfMIWItYF7clIKyeFTfwfegLG2vL7V5I61N3ovQejjpW83Cq
         jgzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CGhjB8IfOJTALfh9eIZxjg8Ou6YiEbtTJwXMGnr58lA=;
        b=Aabzub2CQQfhZuUODh8MNvNLotlGlxJy/JU1caAxl+6yVLW0ft9OsnccirZ6fQhuxl
         RYiKwseDGmU1cZNWHSzjWGDEMKyb74fY7EBAta5V1fjOQCmLJ7oCZY0GRFph7SrCr15o
         Us9sx33M8GGkDkGsTCsFv0ZeCH645NhQ83J/4VojCW2oJh4pKVIkyy57G0yXiHyN/7Vi
         Z7hc4TVe4HLYSZRs//VKGhMa+jvI/s6q/k7g2wRnKCWi9m6bbWEfrHm6sW+eB7YqEDyt
         t7AWxN604oSW6SE1Xm+hAhWS9PGhfGIl++tIx2RQG9qfquwKRNXU1nDRHNWCePUwKMPI
         +riw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CGhjB8IfOJTALfh9eIZxjg8Ou6YiEbtTJwXMGnr58lA=;
        b=bysBrmSOko9QikN8QIFD/1Caqk3Q0eO67pUFBpgEyhgJXOwqLQEGfUGsrpZMagvCt7
         U+GFv7W91bX8gM/xBTG1dtftBKOebR8LMyWksI+3YUEIM50riBd3JEDRgxR8Ltwje71P
         jjbsfek/TUgic873K7+JJCUqMH5MgfukHNmr9qeIa0/KO1znDVNspHIJAdwkGNETXD/l
         o9N+w04PRvmZ5GFBc04C2M4e88KmQ3WGmJ6LPOrMZ/VQ/edjIu4VN5H59WBqEohi+PWV
         zV2Vh0RMN6eGqGegxM4LUAlEFUNfpOUaqauzlf5Hq7TA9GGQjWZK7KXkh7axF3eTYCOD
         7dwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXQbiFKbm1Ut/uCmHYJCvuRcycB/qMBjO6V4348/b50TD8M6NOy
	EByiIHC6PoV25hnOVzkJ/pQ=
X-Google-Smtp-Source: APXvYqx23umo4q9xbp2hOgmLnFAV0denGL47vQW9t7LZOHuNqVWR5yD4cClM4RP7zfpHlSRhEXw5eQ==
X-Received: by 2002:a05:600c:292:: with SMTP id 18mr16645450wmk.51.1566141212993;
        Sun, 18 Aug 2019 08:13:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6484:: with SMTP id y126ls3129490wmb.1.canary-gmail;
 Sun, 18 Aug 2019 08:13:32 -0700 (PDT)
X-Received: by 2002:a1c:f50c:: with SMTP id t12mr7194248wmh.49.1566141212437;
        Sun, 18 Aug 2019 08:13:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566141212; cv=none;
        d=google.com; s=arc-20160816;
        b=SvfEJsNqTA3DJ2Wfa5YNfBb1CZ684fDIeMMJ+cFZDUJHfihkJHnTCeGsBUG9HnfB65
         lrFl870pf0wMZTkBTDto+7QH40O9arKlXnaOWa+5pu+TXZNTzKMVh5Y+Wlh269LAMKD4
         hP4yYVrXN5wSxM1GJ03bzG8uPuO72y2H6WPX1KcvKCh1xbNjBnxk1EKH5JFQKE2zkSYs
         0jpZ9IBAJ59ZVNxo2B2SOakY87erBxYnL4iNFDfpz0/9H0QDr62AzbzibxYS4AJI9Uz1
         Uxu3kp1AvJopur8zuDTWtOqh2i3FnB4O+uzYhTmnCViq5wA+ncguQ0U9WjFoPtDCvV5x
         TBVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8BZ3IlpFKilAh77vMzsBenLCO0kdWiWrCVjQZ/Q7B6I=;
        b=qQMXbORSEONtjPLvvCYCLLDtGhvot6pX9/PfuqPgOiV48IFcCHiij3tLxpt4+FMvVB
         f54j+C77luV/7Fmw8KriYcOggzmLYwKopKHesDFDk6X3nhPI2qgcuEy5lVP6NyMqcMiE
         Ae0el74zF4RZyGD4SJXRNTr7E5OnB3D5CyB7JibXKKDuymoQABGpaWLjOFT9I3+eKBzl
         b4zwOncJmNycz8euKfsdvYPb207TjJv/sxJ8VKDQ3D/d2ihjo+gS2uEivemUzctF/DRG
         dSRTkCSfd8XP5KDrj4xgLkNMjlDmfzD5G90CvWmdRBMzcENaYDZPs0CQcsDJ2gxmG4J+
         TgGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N+O7zhh7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id f13si504949wmc.3.2019.08.18.08.13.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Aug 2019 08:13:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id 207so892827wma.1
        for <clang-built-linux@googlegroups.com>; Sun, 18 Aug 2019 08:13:32 -0700 (PDT)
X-Received: by 2002:a7b:cbcf:: with SMTP id n15mr16497570wmi.48.1566141211811;
        Sun, 18 Aug 2019 08:13:31 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id n9sm15480992wrp.54.2019.08.18.08.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2019 08:13:31 -0700 (PDT)
Date: Sun, 18 Aug 2019 08:13:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH net 6/6] bnxt_en: Fix to include flow direction in L2 key
Message-ID: <20190818151329.GA68333@archlinux-threadripper>
References: <201908171933.VCzySDFH%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908171933.VCzySDFH%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=N+O7zhh7;       spf=pass
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

On Sat, Aug 17, 2019 at 07:46:07PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <1565994817-6328-7-git-send-email-michael.chan@broadcom.com>
> References: <1565994817-6328-7-git-send-email-michael.chan@broadcom.com>
> TO: Michael Chan <michael.chan@broadcom.com>
> CC: davem@davemloft.net
> CC: netdev@vger.kernel.org, Somnath Kotur <somnath.kotur@broadcom.com>
> 
> Hi Michael,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on net/master]
> 
> url:    https://github.com/0day-ci/linux/commits/Michael-Chan/bnxt_en-Bug-fixes/20190817-155755
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c:1047:36: warning: braces around scalar initializer [-Wbraced-scalar-init]
>            struct bnxt_tc_l2_key l2_info = { {0} };
>                                              ^~~
>    1 warning generated.

Looks like GCC warns about this too:

https://lore.kernel.org/netdev/201908171601.0ggCoPtf%25lkp@intel.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190818151329.GA68333%40archlinux-threadripper.
