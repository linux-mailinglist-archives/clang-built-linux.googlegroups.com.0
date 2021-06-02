Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBYVI4CCQMGQEDQVIFAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD0A39965F
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 01:29:38 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id n20-20020a05600c4f94b029017f371265fesf2808304wmq.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 16:29:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622676578; cv=pass;
        d=google.com; s=arc-20160816;
        b=weDRpZRlUn/6uMR3IRB5e7RAcmWeUNUc2bU8LeOTI1yeWR/WmzGVVDDVdyPEbQqxlb
         lDu0IQ7QWMsSMzLCKttb0S79XnjqkrsVcR5KD/DC/JcygaGUsCRtbPP8xlWZ1stuZFSy
         TWE685LJXLg0Bi6dPAnmrsuWPahGhPag1CsV5sdU/qdf1yTTdpY2JEFsHffOTsYAfBQ+
         NfopByDabhg7MpeLwDXfLbEgeaosLNIHgW9Nitx4sTwKMhx/vgssxd5QjLmHaqXbDJlU
         Y1JuJP3Q+2ppjhUN0g5doWVQ4JFUDb+9eNFC8vXR0CCngzH7sENSMuPxDzzkf4RF8tp7
         hWFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ekdrc9mThSMvSpIUXhxpI9fRJtqHcd8HnsQp5KEqmBI=;
        b=zEkq4kYarnb/eNCixBXgdKGmVqBrNJlDOcmw4RwTFZw8+fFSteFi3BoW0kzlJf/mGP
         Z8TsDXxfQvk3kNoKAVzTk1sq+XHY5cmcjpQJqSDeRMwOzGXJ5RCpv1zaXONX2Ver1jgn
         8TZah9eNRvUh0C+iFztX03dF4Y71w+pD2M/OamOczJD6eqURTIei3YezvFtzjxww/M/o
         uI0Fe+3iAt2scbad8Ns7rwscj8AlVabT2on4vcyCUP45BHky7sJVMBgB8/s04eH4CO9U
         Rv4y1UZZ0JX0J9vWCxBtZmISucHMbJB0qplCV0wUOzvSyBWCxbWprqs7XHl/0m0SKSv1
         N1KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=qPx9Zq7E;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ekdrc9mThSMvSpIUXhxpI9fRJtqHcd8HnsQp5KEqmBI=;
        b=oUaerg6xx7V5jVfrgv8k6R7cnDI+uoy6fOuJzJtAr4oll+ODhUXRT3Mb90C4S33dSn
         C2H+Ik031aHOukLx7MblvW5h21MbMyW/hc1iR0LIeRSVzENXar434Ko+KAuOrg82NlT4
         Av5LL+QazZeXFCj+fjkC/hwT7+LuGeRkRddcHgk07Ei3cZ4sFSM+/3RtFV87bgUPLF9x
         BLdNEO9rljXFTm9o1qrY64eGQktFpIgMRVmbgYpwp+KhtpJqjr8ToTLmQK4jNmpyj3rH
         ZI3eGDQH4S2ujNhwdwhVGwaPmie/BPXrgredXAyOtCvDwsUo3/3tXHHnQA673Aag9tHr
         RxJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ekdrc9mThSMvSpIUXhxpI9fRJtqHcd8HnsQp5KEqmBI=;
        b=HtFgNcXVccN3q7OOFk/lpLseKPqmH7DC3bDwJsx+0nvkDBR0Dl7+fvP2BBpQ7GTlpB
         ug/8xEFVTROBtUm1J4h7BxXvNvKLhKcgwAJFjjr5qsCzBsXD58s534BVKMk7GSR3a6j4
         YuzH5nR4UEa0K8bERUQSD2YjRZUTxjt1T/44En3V2oXrst1NckwZWT9mHgqKl2XPWi/E
         M+HAshM7gPbfMSe80rm4LO7l+JnJZkfybWCVbU84Hqn/njsam6X/AKkxwXiNOwo0eE5B
         72HQpAbBNyW9QhAdOHfBItGfm5vzOoBWeID24ZJ4k0haBVmrfJmzNDCmjQ4Db5GI0XM2
         vnWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312a8mHQx3MphHRRZX9yAV2v1B3UHMRZWB/6Oq01WDg+i3pDCdH
	BDDWV4gQmox63sqb4GGSxZw=
X-Google-Smtp-Source: ABdhPJyGzSHlIFd2ETfWmh8en4VpyQfab3dQ3vFp5JeLZqvVmzkBzatLlVGZ7FivbZwdW5Ztc2TrtA==
X-Received: by 2002:a5d:5182:: with SMTP id k2mr4762409wrv.381.1622676578341;
        Wed, 02 Jun 2021 16:29:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f603:: with SMTP id w3ls4076223wmc.2.canary-gmail; Wed,
 02 Jun 2021 16:29:37 -0700 (PDT)
X-Received: by 2002:a7b:c30f:: with SMTP id k15mr7467498wmj.128.1622676577313;
        Wed, 02 Jun 2021 16:29:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622676577; cv=none;
        d=google.com; s=arc-20160816;
        b=0tbgxvRYLgvdpwwu/P4HibO5eWV3yjuFQz53A5YTpc2EKDmmUMV7R7+87YskDTFVD4
         6HHXqmexK3QkbQ8Fwjw64F4S6olgYIw1NNVpiS6tyNYaKvpGBMCGveJ+dFRzxp17Ap0H
         BSvPvpsqTz27GwBNMpMwMKDRGFT4Mqqksseobbg15aoRsR1cTgL4KfUj9QRsMWfsmccw
         fXNj5qDfH4g40NgcYoxp2i0c7CVMyP3LgyJrj+1ppHb7893/9aoia3daU5VdJDQaAKra
         amHkgc/T8LT+EEHWhUF1QZ/bIQS3QXDtKoIRUBoDvTVpm9Xno4ou3S0jIp7/krvMdiA5
         /XRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5OxZhY2Lx3PSsgLeIF/CGHfusFZKZ4M8VuvTPJ8fjZk=;
        b=qVRBJr5XokDL0yNb0419FaYL6WSrSzSi3ZN0TX7HRvTEWMyY5nMiTNTaLGOBdyCsTe
         r8gGCQepMEX1nWfRb1gIy4loJXBqLfDB6YyhZwQWdmEl6vgZRrr6vr+JCI2CcHF3LoBL
         GOlaKvuC2HMh2yK4vgFTUMBrF1vCSIarJrorThsPNc/kPfaDGwsNQrPYYG+qDbgnKjY9
         L8Vbg/D9ptVdYyDohekgd6ZM/4bEiiLa0UxOglLNW3BqFWbLHjQnF8Cp4guxQ2zSl+/D
         256AdaetVgpFv/GobCNyEcUMlDZQ/MnxtEUXEK729diDgu5qOQBxb7zhR7FEz/rN2c7V
         ztTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=qPx9Zq7E;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id g18si57125wmc.0.2021.06.02.16.29.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 16:29:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1loaIY-007XKV-Hv; Thu, 03 Jun 2021 01:29:18 +0200
Date: Thu, 3 Jun 2021 01:29:18 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Nathan Chancellor <nathan@kernel.org>
Cc: kernel test robot <lkp@intel.com>, Marek Vasut <marex@denx.de>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/net/ethernet/micrel/ks8851_common.c:995:6: warning:
 variable 'ret' set but not used
Message-ID: <YLgUTnam/rp2ltaU@lunn.ch>
References: <202106030332.tmiMOCF7-lkp@intel.com>
 <b34e07af-4559-7707-b00b-5a36789e566d@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <b34e07af-4559-7707-b00b-5a36789e566d@kernel.org>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lunn.ch header.s=20171124 header.b=qPx9Zq7E;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

On Wed, Jun 02, 2021 at 01:02:43PM -0700, Nathan Chancellor wrote:
> On 6/2/2021 12:32 PM, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   231bc539066760aaa44d46818c85b14ca2f56d9f
> > commit: 797047f875b5463719cc70ba213eb691d453c946 net: ks8851: Implement Parallel bus operations
> > date:   1 year ago
> > config: x86_64-randconfig-a004-20210601 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d41cb6bb2607fa5c7a9df2b3dab361353657d225)
> > reproduce (this is a W=1 build):
> >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >          chmod +x ~/bin/make.cross
> >          # install x86_64 cross compiling tool for clang build
> >          # apt-get install binutils-x86-64-linux-gnu
> >          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=797047f875b5463719cc70ba213eb691d453c946
> >          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >          git fetch --no-tags linus master
> >          git checkout 797047f875b5463719cc70ba213eb691d453c946
> >          # save the attached .config to linux build tree
> >          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > > > drivers/net/ethernet/micrel/ks8851_common.c:995:6: warning: variable 'ret' set but not used [-Wunused-but-set-variable]
> >             int ret = 0;
> >                 ^
> >     1 warning generated.
> 
> This warning is newly implemented in clang, it was not caused by the above
> commit. As you can see from the blame below, this has been an issue since
> this driver's introduction. I wonder if it was intended to return ret in the
> places that return 0?

The return value from s8851_read_selftest() is ignored by the
caller. Probably ret could be removed and the function made to return
void.

	Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLgUTnam/rp2ltaU%40lunn.ch.
