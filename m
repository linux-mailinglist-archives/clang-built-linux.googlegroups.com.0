Return-Path: <clang-built-linux+bncBC55DX646IARBN7X6XVAKGQEQDOIFKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 195B898111
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 19:13:28 +0200 (CEST)
Received: by mail-yw1-xc37.google.com with SMTP id q7sf1949746ywg.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 10:13:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566407607; cv=pass;
        d=google.com; s=arc-20160816;
        b=c0jbW4NpI/PydnGLfu1ltWTEmd0FPsS1KVlXcaHpStf1LIJl6SP4a9klPsS6ZW2O0s
         TPuucZ6z4jiN58xX3GUFQsOuKkFUMCb4W0Cnm4NXpFCbfmAbuEu/akZ1Z15ysG92jgjx
         XQawsT1zOOlAsW14r9vY4MinoM4WcAvEdTTXHTN2aB24T88oWecS73E2jsFxQG3rxQII
         g3wA1+1rKvR/j5H7PoIh36vxyqtF0C/p+56MFKR51HIdJACeJwcOl/dexV/N5bYkZxqn
         gzkjebldUldtBVamSBZBx9QgLWhhEJTf6LysLMxprFP/D4W3YX4C5pilJVAWamv7yA0F
         Lkig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent
         :organization:references:in-reply-to:date:cc:to:from:subject
         :message-id:sender:dkim-signature;
        bh=EUu8WccGducv0lyjcc1L/YqCYaGDmDdhvS613ts3q9o=;
        b=XMf5Osuk39+lwvmC6Oihe4izpa1GPULF2a6iIGFe4BD5X2dw2t2wD1krHeO7KkXsCT
         FwIdnz8kKfmatyrccFehdCUIS31TInwe+xAKReD/TkNN2OvHZtj32KRA9Ue6Xg7HHBOL
         hVzRazpVekARNmXvhps510Lddgi52KQx+LYCi3+9CZ7+DkiPgRMB/V4nsmRm+BohngNS
         J4VvP03alBpjqRA7N+6rSiD8AAFbNdOG3xHK6dg1xYRkYrhMLMNoAbKf0xpqXyPNwYhE
         RLSxhb66mvqGjkV6VrLPjJ02Gr3sw9aY0bKjiPHDS0+0CaUY8Z87RYghaB7g+Gj7Bax7
         aLbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of luciano.coelho@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=luciano.coelho@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :organization:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EUu8WccGducv0lyjcc1L/YqCYaGDmDdhvS613ts3q9o=;
        b=pZTq/APC3GS3S/7ItxvorNvbjCrFlzqcU3D+L5klb4W9epgnarqm1vUgK30dw7OJdT
         /RMbI2CRGDXA+oMN9GJk8Ey4Ql/NrCkCfTkbvCFvX9Q/JT5FH3Uk35QrlzRmK8m4DHsk
         jPoN73CcHXn5DenNkdw3CgzFzwHyCgnOn+Ceq/qACgkQZ768+XUKxl/0mEluDJfeL3lg
         BYFNhCrb9+qhXxuLH+zsuOvgBZ6ADOPfK9gfhIEHAAmB1l7QssvbtL26n/eu6y8qlk/t
         m5MK6FIrmFj/aIbjq1jbQs9vgY3i/ReE+rKZfaigRnzy6jb6AiPFAIoQcWI9+oQq71VA
         dK3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:organization:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EUu8WccGducv0lyjcc1L/YqCYaGDmDdhvS613ts3q9o=;
        b=gMgi1YIdkp+tpHoMMdIhtQK+w2iPnwufNuLrPp1Cs7iAfAKvxZLirHGlzt8/bHgs5D
         TFucnyJTZeRChBNnQNvPk6LiMZgzWhYT7mWem96nmxht4TtjvGoF4LC1Jm17ODGNyxzd
         H+0S3hbuJnGQtdzmACXXvI6HzxhDD3rzo30z8OuZrUdqcsJlxTcPcfjLUgvh98IhcTwX
         JEFzEUAOFAqfk8eBbCne5Q2fGlckvpvmyvgP0up9s7RKzhb+avbNuJKvlHggASww8o3v
         qRHMejVLdaiPZMHKI9VUsasFb2x/4H4buT/J/3CJup8KdNFgkCsQhAYKLfz+ZVzVHCS+
         sFUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUIqAGktko4wbDlyMK/rvs+8BGW+IDgYbTec6HgTy74uBiNAp9F
	nzHPeBtjoBpr2VS9B6C0L50=
X-Google-Smtp-Source: APXvYqx2A7yuT68boga4MnyFh0l4L1tfVZCR0dd6TTKPl5PafvFDazQrrIJ0WrLMlRyyEkxXdgrU0A==
X-Received: by 2002:a81:30d7:: with SMTP id w206mr23677601yww.498.1566407607121;
        Wed, 21 Aug 2019 10:13:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:42c8:: with SMTP id p191ls569698yba.4.gmail; Wed, 21 Aug
 2019 10:13:26 -0700 (PDT)
X-Received: by 2002:a25:1d42:: with SMTP id d63mr26332678ybd.405.1566407606865;
        Wed, 21 Aug 2019 10:13:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566407606; cv=none;
        d=google.com; s=arc-20160816;
        b=Tk6oBqTznDKIsxhmMxzLjbh4nKFKZMX/SnxgzgPxdJqFwliX+CAvSMltt89WZo/3zy
         Yncofii30krW70QCh1nCOkU8vhzg6GLfDjXNM1WWPTFw6vW0rAikGqGn5QZVbRrLzbi8
         02x8SPxkRxiP0Jok2M+EU9exGREASU1Q/gm0OyNipzj/6xnLXu+3DcUoRtfBqcyalDXF
         qg4SHGrEzLSe5cvZJaNq/bMPLtpSbwJv7QODlJXK+1RuUuNi48d/7vI3+k9FjnscEMnQ
         y0N6hP2mR3vTTJ3PXLiSEvyVG1SPeGnq1cdeCbqDc2HDorJpfCi5Kg5/dmzn+QurdYo3
         YDbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:organization
         :references:in-reply-to:date:cc:to:from:subject:message-id;
        bh=ZXVZmGSUnaNoH34CpiVSB7C1k91vzTHcYABCkGjzVSI=;
        b=Lu/kjvTCvnDTJKQdp8lUA6gU78clvcPlla2lmJDyP2nzJqd9WW3LtU2L/7JRlUH1rR
         k2IYrttlkphhSETfhaRs0sFm4+B3yO6g0MxUxCvgGIzmInSHENuMyqEuw4573l3m6Exr
         TxC7PGfFCQj2GO+Kwr8YLDiMr+jBpC0vtVyYu8JOY2eJIubqDemtG0rrrwm0hFK0q7OY
         rEpMJbYhX3NGkgrdSkvAdapoq5RM0/4oFGS4b63F00lloPGxOmIN1z+gK75d7IJTCAmd
         zU9fRyjWPGHpDKKKjHk5w0Mcd8yI71tF/7/y1E76W0Z4JxEIQZ3CbFuOVKJohPq7+JzL
         W6gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of luciano.coelho@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=luciano.coelho@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id j5si1204158yba.2.2019.08.21.10.13.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 10:13:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of luciano.coelho@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Aug 2019 10:13:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; 
   d="scan'208";a="186289238"
Received: from pkacprow-mobl.ger.corp.intel.com ([10.252.30.96])
  by FMSMGA003.fm.intel.com with ESMTP; 21 Aug 2019 10:13:23 -0700
Message-ID: <830c153920232f8541f1aa5725ffe354ea50dddd.camel@intel.com>
Subject: Re: [iwlwifi-fixes:pending 1/1]
 drivers/net/wireless/intel/iwlwifi/pcie/drv.c:1054:19: error: invalid
 operands to binary expression ('const struct iwl_cfg *' and 'const struct
 iwl_cfg')
From: Luciano Coelho <luciano.coelho@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild-all@01.org, kbuild test robot <lkp@intel.com>
Date: Wed, 21 Aug 2019 20:13:22 +0300
In-Reply-To: <CAKwvOdkEY84oGowZzdvK63SJ=kU6FKymBs50hJL27y2USid_Yg@mail.gmail.com>
References: <201908220120.xVqhquIf%lkp@intel.com>
	 <CAKwvOdkEY84oGowZzdvK63SJ=kU6FKymBs50hJL27y2USid_Yg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1
MIME-Version: 1.0
X-Original-Sender: luciano.coelho@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of luciano.coelho@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=luciano.coelho@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Wed, 2019-08-21 at 10:11 -0700, Nick Desaulniers wrote:
> + Luca
> This looks like it should have been comparison, not assignment.

Thanks, Nick!

Yeah, I got this email too.  I b0rked something up during my rebasing
of this patch.  Fixing it now.

--
Cheers,
Luca.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/830c153920232f8541f1aa5725ffe354ea50dddd.camel%40intel.com.
