Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFN322BQMGQEMKLFFZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8C435E01D
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 15:33:11 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id y127sf1719843pfg.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 06:33:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618320790; cv=pass;
        d=google.com; s=arc-20160816;
        b=q8vC7eGsAuBuTP6+odMNHijz8ptMC0dd4/o6sP/sYpXxWKnQ6UqWszZ8h7/Ig/g09j
         yG3Zr7BUIox6nZ/z/OHwdN+tBZLFvbxzDLJEBTmibE4xikaREYIww3Xe3Oc7Ctl6rk89
         oG1UoICyv94BTLRYJhlxG6xUrTnPWvUcqoh2eSIfG7ORpZ9OSVydeGlPxIT37vqpFGJu
         W9jiTcasrNC+DxLDS8XGYw6Nn8AtWXNauXgpg2ezaxBmI6UeXtnBsGZAd0y9AzvAH/l5
         U8hUyLkB2W9vmKzN+iQmApowfJ49qGbhBmrmMINQK2oZkEqYIeZ2gH9dPOTQ6bV40ahV
         XFwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=rrhjrmLwSAZDGu/4ccRBv6Jrw4a4LMw+gFLYhdOAtV4=;
        b=aCHTScEF4SelcDUZEYIRzr0wkFM5arBnEHwOPgBajZcUcibF+ufvHrJ/deU4VBojWm
         0C0Umn5scU7EmUZFReTL/IBGEf+mMANYy8SEXr2O0r84ZQtOzn2gsj1pSiun+gRTPEat
         /sM9+SX/U30CyhgyadXSQEDI3PO7FH7b79KQiY6QL4bFmYXF8Qnv+BOJ/kmZ0pvMfTyn
         A0Eyblfj9Z9utfgvQUjzsWlc8xPvLjoXFTlVzgLCqC6hVB3G6kDjvrpAoYXGes2v2IdS
         X3xtOuCvFFb6OYFamKCzprMgWlSvBiu8bzOFgkTLVNAg0Dn82VNStZ8qqJYZY7u2IHCh
         ywXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rrhjrmLwSAZDGu/4ccRBv6Jrw4a4LMw+gFLYhdOAtV4=;
        b=qMe4W8nEm+Ggd7G3xv9Mioji4wVwh4tNc3/V5ssyVGRNosGd/ZTNkIv76Cel8lpTNw
         yQWWli3hL72UVdOEwpjNDK0nDwIZ9kxgy0SOOSKG4jTKqhPdhzEIG4kzYbNTeXFjI3M/
         m9rcgyOgBg14tAaWZxgaUUPCpMfDqfD5j3tkDIbPw6WkNSOpXEHW/nv59rszIj9Q40m3
         zESzWbpdRz4v3rlyGmxPcpCPPk8LZW1iz+YahAp94bcJLYFYlSOsJDihGP1hbXzrxsU0
         pNoqKhtZTLHiLw4DxXdnuS2HFQcbiLyD5wB1jXdhQnxhqVEJ1vB8B5lg6zG8MzMs/+iA
         0bZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rrhjrmLwSAZDGu/4ccRBv6Jrw4a4LMw+gFLYhdOAtV4=;
        b=nSTgwC/YGFOtnuhQinNRFfLwKvF8RM/Zxa7Wq7fpx8uaPYLDFHoyfaHuM8lvuxU3MU
         orFNWWQGK9WxH3b2EFUqEfzRSvFVMaXNPaeecQKO+0ttvWWOKHImjKN1Z9EcR+AEip35
         DuwTP6U2UnS0OA2RlK3K1aH26JNAgMORr5iK7aqMdz9Yzbtf4HYJQ+YNihHFfiuHMPmS
         hgupAIJoNkN0rrnHB6KrKLtFt+BpUuj0VWkHOI0/cfu6h3mGhcftJQX5z7d8q1Dsi9uu
         kVB2dsuRNy1t66Qai/u+AtKW7jNYwde8T5v/okvc26hEzU2XvJJsecZJhw/UfxPzaK9S
         Wq1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307XREIAbnYKES2UQpHQ6V9ndfiYC/Qy2RABSvW8vP+6UdRUn96
	2xldSm8aZEaByw1XFT8JupI=
X-Google-Smtp-Source: ABdhPJwpBQFOHEA5u7rSg1phFxmeEZ8AvforybzKSLnbk64UljJDnLPOlVBGyYF5bVqT5z9Cjcv53A==
X-Received: by 2002:a63:c450:: with SMTP id m16mr31693022pgg.333.1618320789742;
        Tue, 13 Apr 2021 06:33:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4ec2:: with SMTP id v2ls1702311pjl.2.gmail; Tue, 13
 Apr 2021 06:33:09 -0700 (PDT)
X-Received: by 2002:a17:903:1c3:b029:e6:a15:751f with SMTP id e3-20020a17090301c3b02900e60a15751fmr32577699plh.44.1618320789006;
        Tue, 13 Apr 2021 06:33:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618320789; cv=none;
        d=google.com; s=arc-20160816;
        b=RXCVm9+BsMagIFW2TYL/lUc+OqsC3bKiXQJqe4U7hPMcfRy4TDAv5dYBU50UzKwa1J
         0YA2Lof5UE47/bUGB6GqV2+mpjr9exZE81ABlGIkirhqJ3HuKVS6DH1wRRwDedGb5Yx7
         +on19IsyJWNxIxnr4BpdhawQFxHbkSSYXBYXnisal0v7ESJJXYNpX3WqhIW+ITAUcjuY
         1P+IQmN0mYlPI1cd9V/tVx7U2GcTjSZpsAYLLEi/u928F3x57EY7ekcMwMzaygOETQr+
         1iOL2OrnFnTpB6Jt6uxZbnGPMyrYAYzL9Km4Xcvx/LgnZ6ez9xW1X+etrghM7ohfVgdH
         thUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=0rLLI2tRs0DDjQ/2pKi+BaPC/f1VEXx207a+EiktjC0=;
        b=LGf6rrN9+WizzK4QU56XbQcrGFMdw5k7wvRhhn1CrCG29Q2dKvO9pcR6XreLFbCe5m
         WWdUMdr1+f5RvOO8fAU1Y5RLzVU2zXRGJlnuYg4y/8/wP9sRGyubPzIVPVXEZ49FydRF
         llldB76ybBlN/X9clvGOuUsX8P4Fd9prEbldF7SFx0UK2GHTtchGPOvj5dCkfNTDbury
         qYeX2ep4BplyKav+2gQiFPiUq/BqWcW8t0KjYrDXyNKts+ziNqxuspuRrGyZEPRp/7xA
         Xa45jC71V4jEp49OnizdyTh8if8euPcOwQb/uBmrwjZE5DuJSnnTDd7H4E1WIFGsJ6Sw
         za7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id ci2si173191pjb.2.2021.04.13.06.33.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 06:33:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: sAUHJaF3E+rCEhnDoip9gi/iRJunmWlZEiPD7vNPDWg0ln4Dd0YKI1eK7igKv85NDDRnSB297D
 SBlXtw5uQPGg==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="258385436"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="gz'50?scan'50,208,50";a="258385436"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 06:33:08 -0700
IronPort-SDR: ccrycfas2B9wytwmt4UWTVdOgfyKMzOnC/1YU+2NDdNNmDT/wqWjHhn0hK0WmVFz0ccS+Lsqlj
 AFzkWou+M5oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="gz'50?scan'50,208,50";a="450398515"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 13 Apr 2021 06:33:04 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lWJA7-00014a-6u; Tue, 13 Apr 2021 13:33:03 +0000
Date: Tue, 13 Apr 2021 21:32:17 +0800
From: kernel test robot <lkp@intel.com>
To: Yongqiang Niu <yongqiang.niu@mediatek.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Mark Rutland <mark.rutland@arm.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1, 3/3] drm/mediatek: gamma set with cmdq
Message-ID: <202104132152.liqPUFTL-lkp@intel.com>
References: <1618209347-10816-4-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="UlVJffcvxoiEqYs2"
Content-Disposition: inline
In-Reply-To: <1618209347-10816-4-git-send-email-yongqiang.niu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--UlVJffcvxoiEqYs2
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Yongqiang,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on robh/for-next]
[also build test WARNING on pza/reset/next linus/master v5.12-rc7]
[cannot apply to next-20210413]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Yongqiang-Niu/gamma-set-with-cmdq/20210412-143659
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: arm64-randconfig-r023-20210413 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/b562bd6c318f4681373221cc292c78d51cb819e6
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Yongqiang-Niu/gamma-set-with-cmdq/20210412-143659
        git checkout b562bd6c318f4681373221cc292c78d51cb819e6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/mediatek/mtk_disp_gamma.c:76:50: warning: incompatible pointer to integer conversion passing 'void *' to parameter of type 'unsigned int' [-Wint-conversion]
                           mtk_ddp_write(cmdq_pkt, word, cmdq_reg, regs, (lut_base + i * 4));
                                                                         ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h:199:19: note: passing argument to parameter 'offset' here
                      unsigned int offset);
                                   ^
   1 warning generated.


vim +76 drivers/gpu/drm/mediatek/mtk_disp_gamma.c

    57	
    58	void mtk_gamma_set_common(void __iomem *regs, struct cmdq_client_reg *cmdq_reg,
    59				  struct drm_crtc_state *state, struct cmdq_pkt *cmdq_pkt)
    60	{
    61		unsigned int i, reg;
    62		struct drm_color_lut *lut;
    63		void __iomem *lut_base;
    64		u32 word;
    65	
    66		if (state->gamma_lut) {
    67			reg = readl(regs + DISP_GAMMA_CFG);
    68			reg = reg | GAMMA_LUT_EN;
    69			mtk_ddp_write(cmdq_pkt, reg, cmdq_reg, regs, DISP_GAMMA_CFG);
    70			lut_base = regs + DISP_GAMMA_LUT;
    71			lut = (struct drm_color_lut *)state->gamma_lut->data;
    72			for (i = 0; i < MTK_LUT_SIZE; i++) {
    73				word = (((lut[i].red >> 6) & LUT_10BIT_MASK) << 20) +
    74					(((lut[i].green >> 6) & LUT_10BIT_MASK) << 10) +
    75					((lut[i].blue >> 6) & LUT_10BIT_MASK);
  > 76				mtk_ddp_write(cmdq_pkt, word, cmdq_reg, regs, (lut_base + i * 4));
    77			}
    78		}
    79	}
    80	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104132152.liqPUFTL-lkp%40intel.com.

--UlVJffcvxoiEqYs2
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICJOEdWAAAy5jb25maWcAnDxdd9u4ju/zK3xmXu4+TOvvJLsnDxRF2RxLokpKjpMXHTdx
O9nJR6+TdKb/fgFSH6REOb3bM2daEyAIgiAIgKB+++W3EXl7fX7cv97f7h8efoy+Hp4Ox/3r
4W705f7h8D+jUIxSkY9YyPMPgBzfP73983F/fFzOR4sPk+mH8e/H2+loczg+HR5G9Pnpy/3X
N+h///z0y2+/UJFGfFVSWm6ZVFykZc52+eWvtw/7p6+j74fjC+CNJrMP4w/j0b++3r/+98eP
8P/H++Px+fjx4eH7Y/nt+Py/h9vX0cX59OLL4rD8PPl8u7/4vJwcvtwupxdnZ+O76fnnzxfj
yfzucDtf/Nev9airdtjLscUKVyWNSbq6/NE04s8GdzIbw58aFod9ItAGROI4bEnEFp5LAEZc
E1USlZQrkQtrVBdQiiLPitwL52nMU9aCuPxUXgm5aVuCgsdhzhNW5iSIWamEtEjla8kIMJ1G
Av4HKAq7wgL9Nlrp9X4YvRxe3761S8ZTnpcs3ZZEwuR4wvPL2RTQa95EknEYJmcqH92/jJ6e
X5FCIw1BSVyL49df2342oCRFLjyd9VRKReIcu1aNIYtIEeeaL0/zWqg8JQm7/PVfT89Ph1YJ
1BXJWjmoa7XlGW0brkhO1+WnghWWdKkUSpUJS4S8LkmeE7oGYDOHQrGYBx7G12TLQF5AkBSw
XWAwmGxcCxrWbPTy9vnlx8vr4bEV9IqlTHKqlzSTIrD4sEFqLa6GIWXMtiz2w1kUMZpzZC2K
ysQsfcOxDAFHgZhKyRRLQz8NuuaZq32hSAhP3TbFEx9SueZMoliuXWhEVM4Eb8HAThrGoBx+
JnjG+4BEcQQOAryMaphIksKWBA5dc+xQ1LwKSVlY7SNu2w6VEalY1aPREZvvkAXFKlK2wvw2
OjzdjZ6/dJTCN+sE1JvXkulPU2/5batqHTCFDbcB3UhzS6haRdG05JxuykAKElJYi5O9HTSt
z/n9I9hvn0prsiJloJkW0VSU6xs0HIlIbVFBYwajiZBTV0ROPw7T92w5A4wKe+7wF54yZS4J
3Zi1suyWCzMLOzyuF7LmqzVuFy186V/YnnTa7plkLMlyGCD1TakGb0VcpDmR1zb/FfBENyqg
V71GNCs+5vuXv0avwM5oD6y9vO5fX0b729vnt6fX+6ev7aptuYTeWVESqmk4Wu4Bopa4m0Tr
oq+3NoyKrmEHke3K3V2mOV8zmZAYZ6FUIZk950CFaBkpQJB67l2TTHHvOvyEBBq9gelxJWKS
c62hWoKSFiPlUXGQdgkwm0/4WbId6LJveZRBtrt3msAwK02j2n0eUK+pCJmvHbW7A0DCKgcb
0e5AC5IyWAPFVjSIuW0INEzQAGWjp1pJ1ZVKKwK+Mf/wCIBv1mA6HeMeCzzsIzjBeJRfTs7s
dlyMhOxs+LRVdZ7mG/AQItalMeuaMKNe2pDVS6pu/zzcvT0cjqMvh/3r2/Hw0q5rAa5gktUO
ktsYFGAMwRKaHbZopeEh6JhaVWQZuGOqTIuElAEBb5M6+6Py9GBWk+l5x043nRtoa6Ecch6Z
05UURWZJPCMrZvi3zxLwdOiq87PjOJm2DfxluZzxphrBmon+XV5JnrOA0E0PotejbY0Il6UX
QiM4c+DUu+JhvrY0MvejWwtX1jy1Vt90yXioBqVUyjAhPXYj2Kg3tqyq9nWxYnkcWO0ZuIX6
kLVstaA4ZgUbHjlkW05Zbwzohuau1w4WJuo1aifDOmzBFwbPBGym47miDvpEoC13aikKOMnm
t+31Sn9nnKLdFxaGbjIB+oqHZC6kNbXqEADHv6M44MHAgocMDgBKcntlu5ByO3WsLovJtS+K
AO0EweqAQVrk9G+SAEklCjj7nfBEhuXqhmfeEwZgAcCmnrEAFN9o7bGxd37vQSOLYdDcP8CN
yq1ZBELgUY//dsyIyGAp+Q1Dv0YrioBjNaXOedpFU/APXwwXlkJm4HhCkCSt80If5gUPJ0tn
jWgew+lHWZbrMB9PoBZujkVHnZCAZ1Tt7qKuWcRhq2HYUva8XKMabXNDPTL+st9TEIrvPK6b
c7hYJtMcNmliBR9mqzUUWRzBWkj/cAGB6AAdVM9YUQHOqGUM8WdpRzla1qaZJtmOrt1xM+GS
bSCKr1ISR+HAVpeRpUrav7cb1NqY+YYa4b4wnYuykM4xRsIth8lW62FZBKAXECm5vaobRLlO
VL+ldNa4adWCxN2OsazjH2ZRPaaHTX2IXhEwRnWuAPH/4K42gsJpoFdkTbzUzgMGTKledItT
WCLHBCj2ybs6QIWFIfMNpRcc923ZDdp0I/BZbsFPBnfGOWnoZOyYDe3nVDm57HD88nx83D/d
Hkbs++EJnF8CfgtF9xdClNb38Q6rzxX/4JX385PDtNxuEzNK7Yj4dqGKi6B7pmHOicDy6bRX
q+ox8eVikICLJvxoJIBlleAWVerRpa1dAPSKSwk2RSRDRBo0zKmA8xk6hNZFFMXM+F9aggTO
Rf/WxZmj95sRmXPiU2lQ9pwlZUhygjlHHnFaxyy28xHxuOMWNmvmJv1aPU+W81bey3nALe/D
SZdoVDOdyvNeuiD4kZdZXoMXPmgS9qGw05KEgDeWwnHLwV9JeHo5mZ9CILvL6YUfoVaZmtDZ
T6ABuXYyEDLRjQmnKkfc8iTimK0wZkVXB0zClsQFuxz/c3fY342tP21YQzfgxvQJGfoQFUcx
Wak+vI5lnN1gNTZWsWbFk0BbXzG+WvtyPKpIPK0k5oEEdwu2BfhXtmbdiBRaE+LV3ho487lJ
Wugs1fnpKru6FnkW29Py40j419Z2IxPLddwwmbK4TAQEwymzQ9sIDnpGZHwNv0sndslWJk2u
86bqcuYM34RchU7IdjNn2q/foO03txlVWJk97F/RAsKMHw631QVIe4bqtDDFbaq8kjMIKx6z
3TA8XeyG5KqKdMc7nJI4M9cGLpWAJtPz2WKIEoDnF+NuHAqtEBVIQbvtTMY87Y/Bc8ykDo4h
aaLyoNeN7a5T4TsQzBzBJu4WvU6b2bDEQHlhP1CS+b0zg7OabIaha95NLTljM/QJfAGIMTEs
5LCLNj2eITwTg9JJtnDy9bvs/AlSDfxE3aPJhUpGYuDiFELKFDmhmbDwG7wFGFya2bSbuGAk
z2PWbQVjl/PdZNxtv04/QbirPUR35JytpN/YVDohB322fF2koe102q3T3khFyjO8jBgebAuB
DGYoT2BwhYcbH2Jphxa2N/INzD7JvEe1x6zY3l3UprB0M5yvo8PxuH/dj/5+Pv61P4L/dfcy
+n6/H73+eRjtH8AZe9q/3n8/vIy+HPePB8RqfUBzPOPVIoH4HI/GmEEESAnE7S7XiMckLGaR
lOfT5WxyMSAUF/GsgziANh8vL7reRgOdXMzPpie4mU3HZ37r5qDNF2eTixNk5rP5T01qMp7O
zybn7w44mU/Ox/Nxd1qWsFXGaFEd5SQfZm0yWS4WU/8R6+CBsGfLsxOEFrPxxXQ2SMjiTbIM
NnSZxwE/QW96vjwfn/2EKJaz6XQxtMKTxXw6P7U2k8X4fD6ZeheHki0HlBp1Op15laGLNpvM
Ld+3D13MnRxKB342X/iyGR202XgyWfQGyXfTltDEUvuogDBVFQ1wPAFvcmKzgWdTzNG7aSSz
nCzH4/OxTznwjCgjEm+EtJR3PGtHHMC46GB8CiPYoeOWsfHSOZV9ZBiEqBN/xCMoeEV4K9cc
AngPBFP3GsT/n4XratJ8o6OXIUuOKJOlB8fBWNZU+pq6JSacmA/v0gblfLj74t3ul/Pzbues
ITzYOWvo92M6Q3ZhV3tAOBrA3ywFb8bntSBCzPG4r3C6Gd/EyVeYNpX4cuKp1Pnyy+liaem5
CRMQ4utS2Jn7FOIAVQWWTdyIuYuMSeRT35ogUsmtpJe5omS5ya+bq07wmiyyeEVWg3QGB8IL
CfE+BXfCLqkQMcPLGh0KOXv1BreS/0L5ppwuxp6ZAWA2Hvep+HEvZ22w2fjLikHgU0VUXZ+r
Abe5D9eDixnN6zAM4ys399oGStV1SOQrMtC+Q4n1SzrT7A/1VAbqozMCWV7d1dWqRau1WZNQ
XGFgGpuo3ArmiCR4Qe3kP6q27qW0V/4btmMUltNbYkAlUesyLNzk3o759oGuJtD3lrj6QqLz
OZlYecYUUw5VwAqnKYv9CiGFTu5g2rhJWxpJhScMlroq8zyQY5i8P7RApJysVngFE4ayJIEV
MZokiD3Hjb7zWbM46yTpak/z+/mHyWh/vP3z/hVc0zfMKPWvVM2w66uSRGGQ9M2NZStAW1Bj
4pBksm8TcQ/HCj0jkXB6ynJv12zo6DjFsjWt6fC0usYWtscJVkB5IKjN0xMoNPV7/u9wYnE7
+8lFyHKJd2/rzu7C4h6SmswGbEJCwdnr1yHinQICCplq7YEwqLdy0LfXRiMOxnOFuSRJcOvm
zE4fvzMDa5bzn5wlSQot8h4nAN6el/O+ZoHpwuzu6pTWDI5ucbh4n0Obk0Wfk8AbOQ6vEnbo
edHjLLzsRpiDyetKZoavJGddaolvuQYn6vZVW0/QmClWhAIv1HwXnUznxt3DyvCO15V4B+Rc
sTQQOJ2KGO+HVnj92L1v615WRM7iBc+A9vwNY2trqWgS6qJb+36YRf4qI4eCdUJisWlrWD3n
Hh6cOoue8JV0Co+y578Px9Hj/mn/9fB4eLIZbP2oAiLG1Jf+yOxcZ9K9SYEWEm7xXjj0gGi8
cX7XOWFTG+n4ulefykxcwSHBoohTztpbNi9PXVKlsAoZELTquRlVblPPE69uFTeq0eZHhuRU
F8BVGEmDUadKEMbvHg62RHUNWO/muK0lMx2a7tHx8O+3w9Ptj9HL7f7BKadDSpFkVqVb3VKu
xBbLiiX6mwPgfplkA0YL6g98a4zaY0BCVg3Af9AJ11SB1/XzXdBV0AUnP99FpCEDxvwejbcH
wGCYrU6QDEQhvT461ihyHg9I2i2S8GLU0hiAN1MfgNfz9K7mfzKt7nQaNfzSVcPR3fH+u7nc
tYc0wvHtTTDNdU6+JFtVIzuHQZPMtqDO3vDsBhvc24eau+j++Pj3/ngYhQ3L1pAKwzS80ooc
+ULklVxBfIaxSWLXqUUQIURVYYi/tbHr1mrgCHGbmi5xNTj1rcVKiBWY7Xp8m0gFwnshXZ2j
D7EBUWeKcuCqE37qCSeU0qH2MsTs8pbJa3dhDFAJakJaU559+Hrcj77U0jUKoSF1hbIfoQb3
1qW59pSfyuA6I/hEgqRwdln5dYy4ChLzm/oocx1deZ05D2D0b4zsINhvbp9bhW3Ai8nUgL3h
WY01qYdh3iFs6KkxSu/Ct4izYU6TmZdEH2/+E0Ot1hh3Dk6JSppPxiGPhlEIU907/S7kZDcA
guuZeGbqoATxZngWLSZezSKuhxxdE/hvOtY4w7QyEV9PZuNF55a3gqbr0/CWk0Bddh4/Wd7s
4fe7wzfYA67LVZH6o0iyMiYBc6rN8EQGp2bDMCXC4mjgUZTey62jVKSwUVYpxuKUOsGURtx0
755NK/j8XkBUpPpyGfOtQoJF+4NRdw9qNKeMrX2vpCsQ1kJsOsAwIbpWg68KUXiqChSIA92l
6mFMH0EDsUzN5NY86SE4fHMeXdfVmH2EDWNZt4izAQLVKj81AAy51Dks+5Cw5m3exYHlLwDp
as1z5hbAG1SVoFtaPVvrSh5CDlAsvL3BrFS1mCXplfFhOdjQouEju8GO6ys4mhkxJbUdmC7M
Qg587Tp9Y7iq0lc9ATgKfQJqF95VaAmE2RDVr2EMU0uBFVBeML4i8KFUC2XU0pTzt1WODjPV
RqnWCQOmDkbVz7wvHICFoujnQHVlYFX/g8Gaec1VP130yEQxiugnQJhIdOrrT3XB1YlhcbuZ
aGzHQB+UVzi5MBcyXA1SZWZ9aVOrLK0DfJdcjNbafTw7gAB7y352h+2pSHvrJnpvtWzwu8+O
NNb7b4+weqjMim6+3zQn3ebaJKaYIEdTXUfpPjyEYVmk/VhC5yKUTlhibTDuHY950qA6geEj
7dS5dQi4sLZAztPbqm4bImKjnPX3Rx1P5SIDfUlNv5hcC+e5coy1X/joAzzj0BpK4GtevqqC
eOu2sRq1gpPOeVVBZ1PgSi+vT0Qo+L5et62nqnnBmnCwJlU2Xl5ZldgnQN3udeLJxmn5q95J
y3Ltg2agGbNpnfRyzxa8BbHrZH1XK9CxW9yi1+tk6b4ZOUqxXpF3z9RmH1d1v6D0dcGvcZgg
/Pj98/7lcDf6y6TSvh2fv9xXqY82FgK0SnqnVkCjmUpVVtYl/HWJ6omRnPngM3+8HKxTU50S
13dcuybHCCuJdfa2Y6UrzhVWPF9adzjV7va9Xaj2vX7dF4M3ZTs8gXuthc9TwGxp4Xa0G0GK
Kg7L+6lgtjdSv2kJ1MrbGPOg347B7Ury/PoEqMwnzi1jjYC3WP78TI0BHpTI826hsYVUhdvm
YJUuD1dBZ3LVYyaOjzBZSq8HoFSovMsu0CoTf7294RX1OfItm5Y3eBciI3GXqvnwQgm8YBDB
3ejE5Gn3x9d71KVR/uObnerX9dvGu6tyrdZeo0KmLcYgoKQFxtg2V10MxpQYqBjtYHbuzAaw
SOjc4nagOhcGrscwhuSKctte8p1vokJFTnPLdQJHQQvycZwTyX00E0K9zSoUygfAh8UhV5uO
/5tAtLEDSxh4uuDzYJhhuTtf+tkvoK/OTDWEvWsTh8nJOaoVH6Afw7Gz8/e17gXSdzA2EAmf
ljKLvDLGS43luQ9ibXSL7TpL39kljlXs3ZDgzks+lRnlvTb0CLlwm/Vlh/nGhmgf4zrJT+jJ
hSk7CSHiQ0Z9BrzF2lwHtrWqm4PI+cwD/Cxro6QRvPcGLletfcA7fmujqHTSOY0r66My/GaL
vHZPkCGMMlifQHqHxs8RcF/wD6K4OfMeWpG+w4xBOM1OhXOaoRap9yDVxtW5gGGeGvAgRy3G
ID8OyrCANNopAVkIp9l5T0AdpJMC0s+6T0iohQ/yZKEMsuTiDAvJ4J2Sko3xDkvvyamL1RMU
WP73lLvxrk0JSykT6wpAu5+mMxyjEGbZ9kdeKZYMATVLAzBT2A5+rP7GUajREN8644ch3c7y
yt+11954+ClytGUyJlmGwXtVOFJ27svaoMq84wRpQwd7Hu1DfG3W2T+H27fX/eeHg/5M2Ug/
PXx1TH7A0yjBEqto8BFKg9GUpbj8bE38jtkWj1BWaYEgfNlsO6qGqKKSZ66TagAJ+Ee+FDfo
UlNjVp0bQ5PUs0wOj8/HH9Z1Wj9bfbp+ryn+Aw+zID5I26SLH/XT7AwiNV1h6aPEdvhSi/lA
W3NT1xYits5KF2codY7fiypXvSQy5of1y1x3w1Wztj/o0noDzuMzn/tlyhFz451gOercurRA
b4UOuE26mEMy3OZOGsqu72joYGK9rOPrmsD6WpnqvLx5gdm6bcpXwlOnZ7SAwXvV3S/n44ul
3/pU048IjwvbgvXam3F9yTD/DRc+F9EVn77qSAkzdr8rQt2vJsBPE6n5iddQbxiHUCzZVZeT
i7bPDY7nf6qYCeHLTtwEdp7wRiWdBapbtM1om+sbD/3eENxB2Aj2RGGNmJRuDtt8zK71McP6
hXA/G9oYyEw/yXTzjbVFUubLVAAs9UtSW7JV8TPy7BMebCv9Lb+BEfFhCidOfmbY/rSDpt6v
nhi72r7C1+YsPHy/vx0oAiBJYPnJ5n7DDg26P6xKpX5j//NKCPR8QwKa9TYOCn+pKcKJ+j/K
rqy5cVtZ/xU93TqpOnNHpKztIQ8QFwljbkNQEj0vLMV2Mq54bJftVCb//qIBkMTSoHOrZrH7
a6wEGkCju1FhExIg3m+5WUbOqENAQ9T1mPgEKa8WKFWZVTe+9tL62lu1iWkk2tscMXd4gJKI
5HZZtDx5s6pq3D1SYIRR1DwNOoh3bNcc+YapTFO74wWImJK5THBtNM3xkQmUxpjUIfyDG+kr
HwTO7iqBOO32+en99fkRwkAh1jfQG4TU8YnUuBsmMKQN/zdArfsBhiCXTviuAcDGddK1EASg
tb+n8EL0fRfLy3ekdRVfSqErna8l4dzjKCtYwAHV48c5NEF5ZvIPgZtUO4wwVn3NwFxv5aeW
dk7+qvKtOW/OgVaiMOdjx/dvD388ncE2Br579Mx/YH+9vDy/vmvaP8goPlvdGJ9Fli4Vehan
ugmE15fFDOqcmHQbt7XXtEbdsIWQASdkJwXBTWenmi13pM+/8WH/8Ajwvd0tZhGjVzYM2yu0
vInsZH6Xu3sINiLgcfJBzEXsW0QkTgwbP53ad7JZyx4cPoOnG7+sw8DMWJLGXHsruA+rPOjL
cIEyCJvk6e7l+eHJ7lnwvhJmArgrsZ5wyOrt74f32++4+NJXjDP/Q5voILW/Rqb+LLTNW5t1
1lI65B4R3bijinK+2TC/BlD4OZfEXUTxNQ/ysPJXTfx0e3m9m/32+nD3h+nAccO3swSrULxa
h5rPI92E822oVxAKg7OttPzRjumkorGunlQEYbgnrnngynQxt2FlDV63XdN2YpOOZMG3dUmx
N+JAD5hpxD1me8zhFosa3nc9Gh1y1E+ox3OoSBfx3Wa/SasvLw93oM2U39sZJ33KhtHlunXr
E1WsaxE68K82OD+XDyFW+7oV2AId6Z6KjjZfD7dqqzkrXbP6o7x2lY5P6Hnr1ORVauzIeho/
Zh8LNABoQ4qYZIYJRFXLkgZzVhH6uu/twQLz8ZnLjdexm9OzmAqGeqQniQNEDCExRxCO5WS0
WR2jZ4+pNE8vLFMNHjakGB8cjZVjkGtIqprRp1KWBSdd9dFv+vn56uzBfFS43otrejIjSCh6
cqo9rr6SAY4+KnUnY83g/gtfS9ZdHyE0unlYkjSVQZVY6BBUBwxZjk3pCfMN8OmY8V/Iju/a
GmooWUoI9aOLhWRvHALl7x0NI4fGMpojabtz4JDy3JBeKk9dJwpiiB1ILQdZqo8XgFKxYlrh
//oWSsOasiqzcn/jgZUzr3mP705X6bjz19vsThwcrRNjFBlBCnrL9j1lO46jgcBoDqot/o2N
nmLHYjmHw1So6PodW0u7mmGZ9WFCnAiN+YGa+SvCIMBHFZUCYOlV/YN7HmldMPRnoVuTwm9g
0U51HZ8g5hBEFwMYrVMcOe5aB8ibQWSN13wvl9c3Y23gXLzr1+J60OhIAPS7Q9SygvOU6ZBW
zzJlGJkPT2GEPwFJy1BQeEnN4afAm4Gw1RU2OvolvssGdyllkd0Y+yOnS0RPHd/AF+IZ7gRl
oLzm9fL09igezphll3+cvttl11yMOT0n6o5KtgHtajzaaNrgd9OFBfS7IKBrsiGNO0kYpwRL
Y0y3zXKbU3zPsvJ9aqUjNNiHa2XQRMPLAbWz1atJ/rku88/p4+WN70a/P7xgJ3Ex3lLM+RCQ
L0mcRJaABjqfg/bzDCojMO8QAVXLwh3X4Pta2ipIi2HH1/0bULIhrQY80/CJbPZJmSeNbggN
CMjvHSmuOxFHuQvsAiwcD6mCMF79W0YsBgVWsdUHNUMjyvVtp067BNXfGgFj7iQDuHHGazPV
+8KFSEaDs4dHHhuhe3s63xASl2p6qgkRQ3KLUFoEsmNJYRw0J2aCPKpfXl40NzG4WZJcl1u+
kFiSBzZ1vGnwQeAOzxKncF9hWr+ORMewQ8d4++vm1/nPjRklUWfJEu3RHR2AcSEDg4eWlFAM
JXbppzPsK36GEPckZuXMjYMkweHTk530HDvVfJbXTsKMQKRpXLnxwQeQgervH3//BIfqy8PT
/d2M56mWevfkJcrLo+XSmQiSCmEiU4oFD9R43E0IyOLMaYPRnVMo/1ujCrphbQq1zUP88Pbn
p/LpUwT94LsPgJRxGe01M+KdsLPlZ/Eu1wyhR2ojLu/6WP0f9qmoS8EPa2ahQOkD/ppyoUgK
gjphy9l7FknHI/Tfn/lG4PL4eP8oSpn9LufoqA1Cyo0TcBYyh6oGmDcgNhg3dpVlW3yK84Ej
J/Up8USYHphgbz3RfsHTx6ZEimgwE+0RbnXtykCGyYtm1yuop6us9HpTBZOaMD0yyQDICZ/t
B5Oz/OHt1vxifLvjum8PGcA//LAxVTjf65cHNDEYFZaFHYdRWkREER/jf/BR7SpAh/RJhHVn
As6j5+5A+OnPuLPGGcDd1M+0U49l9TYMSLV6TEwyUfms4pJ49j/y/3DGRe7sh7xfRCWdYDOr
8FW8bdbv0IYiPs7Y7OXjDr/CAOxwUyU1rsKMG61H9KAG/NACqgFTH8CJaQYBAHRnKE6UV8co
dF3uvhiE+KYgOTVKdaOycJpxdi9T8coXn9WxGQ5XAmV2MkuVljs3Bs0MtsV35WasYkXoSLvZ
rLfGpq6HgnCD7bx6uIDjlKGwVLbmzpAvTnni3rwA1RHUvbm6SOKWLdJI+xaih8cR9JTs+Ixk
NtWooiDxDc0+wVXvRlUHuaEpL0b753gZLtsurkr84jM+5vkNfFasCw+kaPTdYUPT3OkLQVy3
LR6Nj7d0uwjZ1TxACuBiMyvhfabeRV73O6w6mmnKI1LFbLuZh0R/CYCyLNwaIQclJdTCYvLN
LCtr1jUcWS4RYHcI1muELkrcznVHnDxaLZaG/jhmwWqDnSVY7d5799cpvncO5e1qx+JUN4kH
E6+ubph57XqqSGErcRQWhTDyXZGecHmWu+Jc0jvShIYXuiJDUPLoBi1HceSkXW3MoJg2y3YR
taspBr757jbbQ5Uw3PlAsSVJMJ/j93tW6/rGRbt1MHfGrKQ6Ng0u2hHGjvlwGlehEH5e3mb0
6e399a8f4mWCt++XV777ewedC5Q+e4QF6o5PyYcX+NGMk/D/Tq2pRNTQzChbgG4Wd9QQV+Nw
IKowxcs+Kc5fTW0q/33Y6yiP7zpRkSGGA1MSHXRD+SjvTsb1sKR0TYMPFjGKSRbBQzIRqi7p
h7l9ajoQfj4jHcESwZNGxgptyEF57IkY7TflztgXjlF5qZ2na0JjEU5HV9tG+g25SCNfdxoL
UDnP3v95uZ/9h3+8P/87e7+83P93FsWf+MD8ZSyzXzyY/jzVoZa0BqHtEVp0sCo0yFJDhQaI
OLZwSY7fWAiWrNzvcZ8rAbOIFHwm3BSR0eamH7FvVoeyimJd2DGIVaboZgUAyejOihlucNSV
lrY/flnVcJp1FhH5fXnGdifGh66O9aBzPZWvRuzs1JoDSY6qKBVKsiNx6muNxWFxEYZoEKdR
s4vpp7Tu2cGAxzTjUE937EpwEYb5a0IijqRRe1FM7m77I82K4O+H9+8cffrE0nQmQ+DOHuD1
ld8vt0aUK5EbOaCzesCwVgEZDnwWKUpOpo8aEPGjnYSc+PZAFadEXEAeMJslE/5a1hTbE43t
cQLSC4jyRTlYha1FJuKKH9I5n4HRLMTVnwJNU1yc4n6Ucs/oPB+l0PRohiGQv8N0dWmEOTQI
RMr2ya98x62p/SUWebT/CkYEjPSwSpJkFiy2V7P/pA+v92f+9xdNSo/Z0Do5U7xRCgLNuHFV
Mpm3sdd2q/X08te7d9GghfGwtviV75N0J3VJgweSkzwzDlESkVbq14amUyI5AY88hQx3O4/w
1Ogw+YwdvkpWHllinWoMhi/ljTS9MKjJCSVKxZ3WFY7+zCr+OrnZlaTGB6VWw6nqMXjoV58e
Pa3jyz8fQEjakWMR4yljfI+kMWBSa4CjclcTNOd9GuIXZSNH7Xn6z+Do7IcaHKYjvAyUl9iB
YWASQc1I1KBVZTTmMwQsHKeyaPI4QpNT51Fjm+MMr5jpi86A5GSfZJmu+hprBT47Zb3zQTvL
gHpEwRXCY1U7tuZMY/7LNNO3Q1IcjrgV6cAU77AXJsbPQ3K+VcYa2Bz5gryvSdoiIGHLeRAg
AMxTwxZlQFJGycp440ZOHRELBxsdCi6P0YFFdaIHOtGIvdORYR+i4yReb9bbKcw0EzFxH1AH
8zCYSNjk8AiTfgNmwMeyq2gb0RrHd8cwmAcLQ09hwyH2XXUuUIxCEBIaFZtFsMFLim42UZOT
4GruK0xy7IMAM8Q2GZuGVdYzgAiDt9MkfvVhDlf+LGKynS+uPNhNQfhgwcEDySt2oL6Ck6Sh
vg6CZ88Ifu532ZS9yAddmbTRYj6f43VRD2Hg4L4sY9r6qnrgojTBLm51JppRPrxaPH/LHF6H
2IrdrFeBr+z9sUBfVjXafd2kYRCuPR/BkMQmUvqKPRN4fuO8mc9xDZ/LaykmED6+kwyCzTzA
K5NHXDjOvfMpz1kQ4Dtmgy3JUohBTat/wSt++ZCN5u3qmHUN6nJpMBZJSz0TJb9eB6FHEieF
sPf0TpSY7ymbZTvHdWk6q/i5hjf6Pqiq+PlsPrlm4GBysFgsW7vZKLeUyR8UeY6bzbpt/ULo
nHN565k/eRQs1psFDoqfaRP6JT9vhJAg2BO0Fl84n7cTolRyeESlBD3TUIEd9Q2ROu8az2LM
T4tGZEQTY6pP0aazJghRsxeTKU9NgzoLrT4SQazdrJa+bqnYajlfez7tt6RZhaHn037rlRjY
qlbC85K0O6VLj8ivy0OuVn1P/vQrW7a+ioFnpbkoqDMN7n1d59RehAXJtKYFCst3FiXVbzN6
ihyyFj2MlT7Y5tf3lYoS2pTF3KFcORRiU5bL/lh4uLzeCTNs+rmc2TpAs7LiV/hXXe1p2mwA
+En4eofd90sYvDWv9TCjKlVEKxbaVD4MJNUqoyZnXPkpi5AKc57SWwuO5caLNiplHXVINUiF
V4Mdiys6WY6wI7LSHn3yCo4edp/2tK5gyyVmLDcwZFdouiQ/BvNrfKkfmNJ8Y+8GlNIFGxeD
QgbTqkhdwvfL6+X2HTx9bPvrRo+GcDLayv9jZZZId3Lplo+pj09NzzlmdDhrtCFDzjkCEGEh
9j3xA3GZtpuuam5wrbq8NZvAhQcPWO+Dq4Ojf2L3rw+XR9daQe59h0dozXHHgU24nNvDTpG7
OKnqRNgc9+alnlHYJ4BXAeekOxFOKsw1QWdLQfeA6WZ1JqSzjbrlmEWczmGYJOlA0pIaR/Q7
dp2ei13EDgeLujsKI+8rDK0hHGieDCxoY5K2SQr8PXadjbAKwmCcIC+8LvHZiMBndDrLfGlw
et2Em03r6ZBmtVyvkW8DNvKICZS0lnh++gSpOUWMVXH7hWhuVVYgxnlm8wB/ocrm8jztZw5/
Gaw+yantTGkngC7OaIPtXBSHuVhrxImR+wWNnqFARlMjvLFBduVRD0dR0VYe8kSqYEXZum2R
Sg6Y51Sm2HZRvlqgGSikL9yfhVpFvzRkjw5pC5/oWA+neiZgcvzIlJBqik3ZWVTsQ06+wE/B
deVbyjnI52iXVaov7JQj+HHPCl5apFnSTuU2cmBZ2kkieCNT+MzRPeUbaDT4s+IFifktWCzd
kVfpnrYaceLrits6pOMHi1pj6bNrEjV11htsmpD0ny1iw/kX3plOGtOmLLqJMmKEHIpuvoEG
3TS5LlsizTMzdPMlcJYTM34g3JHzD3Hd7fULIt16oOgOcaYdA4ryW6lvbwt4pE9uesYjGPi/
8bYcG1SFL2FGjXcjTxHivyio0YQcEJFfj9haLxwlofN53WzzonGrBuE7ikarx0jrxFX8r9oz
nILuUeRXFX6ZJQM2uqKQVjntDvzzZ0acRaAKf3szOKKkgwGVjIlsnOxGDGIyezaAgotXkUba
izKYDh749O8vCXwdcMo8kyY6xOVEeSJcaplizggc3zn1Mfa7Mja4MRp6onAl52cM6+1Bh21H
rhYBkqkK2FEX+1DXuY54mZu+SCMiv+dkqc4b5yMknzxGO2xkwi0HtEz4sC72eAEtrQ5WnBHF
Q6oKnkoeDLeVX8ctcpIZp1IvHdDQuWAikJOiuzIU1yNVf+ubRXV4JZfrIXCCp/yxeAj0hH5h
8CoYhEUv30gr6eAlaLyeyyk+ARDxv5VvjKGxjUQSymw9m6Q6hPFJZ0M8KpDvcLqoRl++1VnE
1ZKbNUB8CaXmay86WhxPZWODSG4n3lS4VWtvkAY0i8W3KrzyI7YKj29WshsnalQfAmTic/f9
Xh9Z04FbqfSqd40d+MbQtXHQVVXQeHG9D1bxJtl95lVQD5wZN0bgaH5s+1mT//X4/vDyeP+T
twDqIZx1kFOE+G71TupHeO5Zlljva5r5W1uEkSrLtshZE10t5iu7FQBVEdkurzDjZZPjp5tr
RQtYMF2gTvYmMU5MfqcWedZGVYaHA57sQjMrFXIB1A6eBjHl2T8MDPL4x/Prw/v3H2/G2OA7
7X25M8LNKWIVpRjRMIOzMh4KG5RH4IY+jgIlX2e8cpz+/fnt/YPoWLJYGiwXS087Bbpa2DXl
xNYm5vF6uXJomyAI7C9FN6iVu4BYdLDZK0pbzHNBiBqh7Q7NYosTjSnhg/ho0hlly+V2aefP
yasFJgwVuF1ZU+FEiUOQ972jnPjn7f3+x+w3CBOgfA3/84N/kMd/Zvc/fru/u7u/m31WXJ+e
nz6BE+Iv5sjhB8pwo58lFNG+GRVkGWnBEjlD6CVT5kB8A5j2nhbzHT/dFyIuim0ObsEsI2jE
DovNNWi0GXSdFWBJnpxCu+CJKl8neZXFlgDJ2p01w0B/09pi7bS6am1iwfdhMb02iSX0BjNp
fL56mle1xCHIDjPJ9fWidQdk3iTY4UOA2squkVVoNicveYTHt8oAZ9W2bZ2lLvnJl8onfrzk
PJ+lOLncXV7e/WJEuRF5C2pIyfgZwtWPle/fpUBW5WhTxpwPKaO2bETloNFZqsPN7s1EJEzp
B+Grr2QC/xNwJPMOcnB9wGeJcIrgIn0yaX+E1NqErEgLj26lws12WZXjwIFhNnxVZca4rJjr
8CFXlorNbh8fpC+GE+yNJ+N7dgirdC1OSePw1CChzrdLU9jUCNLYbDEwVO0P8fLM+/OruyQ2
Fa/48+2fNpA8iSjP1eEmo7sZmI4WSXMu62vwVxeHPdaQHLzvZ+/PvLT7GR+sfCbcicgifHqI
XN/+V/dbcQsb+sHe5/QBeBQgnzTQw6fSwtiGafyw2emfsTNTwE94ERLQjifiqSFZNt7rql6E
LdYhHtRhYGmrcL6dZMmjKlyw+WaSifG+RlV8A0MbLOemh1ePNHmKC7qhBqRdr1chGudTsVQk
y4nVoUCvrzfzpUsuoyQrG6w2YzBLZo9Yh1et9JM8UnPgWQN7poKFnTFihhKSOjNNV/RvO9Uh
MmW3219FjZtv71FgZyrDYpJqM1950agKgrkXXUg1vXTe5zP77fI2e3l4un1/fTSWoD7yhofF
GT7KJd4lX9GOYPWBUFR4ihVPsQjQodiDnUdpN/JtOF+4mBrwkmex8BQE4GbhEZsO27+t0L/i
Oyz+FVOH6WJNptOCeZq3hXrjd2EO10cFQUgxYj4h7KIft1wwesIFu1xdPVHeATt32TzIFBqg
6dxXAW4Ah/B1rr4jv797uDT3fyLzTuWTgI9urquxB8HQXHenEKfnpaHD0qEKXnlCxWkTroPp
JYjv7terqf4EBt0+W6dv1xidLxYhXptNsFp/UJtNsJ6a18Cgm+fp9K2v1OUHH5Q3ZbG1KjYE
jvd8TbsCGV+2CrLXrQVg2TGu2BVBvA0BrvtdRnPa/LoMwp6jTC3VUp+E1l9hWRwBuQ+xY4sI
BZZ4OR63sBH6LVx1JjAnLLegwg5gMR+1ajImxY/Lyws/j4vF1RnjIt2anxH7II1mHSbiawsc
Duztnsn1e4LNDY5ttNQ9ygt6fCaVN5Fp8SFIaQP/zfV1Tu8t5Cwr4dr9lt0hO8cWKSv3NDpF
TjXz3WbF1lgYJAknxTfDFltSzb2FtPjK5qvAojGSk2Uc8vFbmt6NEhWGBL6S4f0BXVEtiNpR
Wiefo3i7uLKpzqXLSO3QIJUS78PDG8Sssigkj7vUDOwyMWQH5ZOg3v984Qca66Suwm9Vy+UG
tXmTcGHXYw8x0e2PLeeSPZIENWzdISDpngga8uOCgnhh94qimhFVRmQ9d4qqonSz9I+2pqJR
uFEPb2oHb6vXpIBIY7c3nb4M3TrwdexbWWD3YXK6x+tg83+MPcly5LiOv+LTRPdhIrSkljz0
gSkplSprs6Tc6qLwc7uqHO0uV7iq5838/QCkFi5g+h1qSQBcxAUEQBDwYqPYLoUvcquzla3h
s5Mg0AbiE6s/j4McJZKDdauY2KJtHPnm9CA4IE/PZfZQcyImG85cHbwoUWobXRIMQUydiWIv
os+0vhXRD9pzzYHiiC35UkjgH6pLHOo7eHaXX3eTOb9LgPab874b4ou5UouRx8h29YZFsgZE
yRdaYlDSxPdc7YbSaJx36vTy/uufx1f9nNIWXp53Wc7oHOVi0ppEZMhdGiQrnsvwaMW8Gfe/
//0y2dqqx5+/lEE5u1N0UP4ut1EW2IpLe29DBoGRSdyzdPysCPUEWuF9rpgFiU7Kne9fH//n
We33ZOk7ZJ3aroD3ImCT/DECgd/i0Dq7SkMxWoVCfYShFqbFPYWG1B5lCmG5oAv7tGql0lCX
NSqF/Qt8f0wsvmEqHW0XkmkCh+LpMkUUO8QUcoRLI+JMfpmiYtyIWFjTAlqEZvQ04dG9VCvQ
Cr5pPZPIbqZHkehsJiCNBP87KO6FMoWwW93udzkk3jb4uOOoc9AWDIkIeNKxRK5E92ftLNnE
HNj7g0ZmWYxA6YKeiVuchuROTKgu49GmMZUfORwYZqyyUSktYjK48mp+p4BbIy21KROEpmWX
pcm4Y8OQKSGI2SXeeoFeRhyAI6YRkPP5TWCNmAfn12Dor5DjzTiIPYokPvVgZMkQbzcBMzHJ
2XPcwITj7gzVLOgSJqZOeIXAtRalDpqZoN8p8sn8XQCmXBgZ6MMCa/Z/9+BFygWihlA9RHTk
IX2g+j+j02E8wtzDVOjhN/QPxufIEvPj9nhjShEax+P+mJVjzo55ZnYMX5xGzoackAl3a1w5
iSe/SZyHli9Jx6dGHYVPLyJqnQnUs3+tkU+LiSgHP1Qj8q6YZOOGHvUqeiZJs4HHp+efsgll
lwbpU2ax12hB4La0ZVQZiy194s00sAQ2bkCdeArFluwForyAtlDJNBHp+CFRBNAFcwAQEVtb
DrbkrpUpwgtRa1/t/E1kwiclIDIXK1/D4qDaEMyoGwLHJ1dcNwCTooW3meSY9K7jUGt9+ZB0
u93KLzi7OhhCN152neTcV5FZS7nQyRRPpgnEM0YWGM+CYkgzUVZl0JMaH1BNhxcs35LBNuzX
eHQzsRwfdYZhdmWeAmnoCvUaeKaYk5zmDQZdy9rxXJDRaSj6PSs6kbTko5p5ohsezeRG1UaV
BH7pItUiEuxYnfO/yMmXKek+kaTiDJ9yVZCaFyaZWWdbAu677MHEpNlJQxjtZtVRPOW72Tu0
WZInmtDnqQbEjcyEoBx6xQWd0We0369AkSjm/e3xz6e3v/Ha/P1v6qHenCLGqA3tpnVPw/tO
6fecksXWGCUxEd9NuZXPQ9LvYI77vtBzKJMWvh2mxJXIJbD6SyRV5Ak7SeoFrxzGC6JvKB8h
jp9TIsmOVTIir1gyJlVtVDzjaSVjt6QC/kP2S/3yz/cnnkDFGiZ/T8RwB9gcgfPaVzm1azjN
KlEqZcWVbd7aIlfxsqB6uZT2OiM9+Yqq4mvDsOdxWjZ4ceQY8eJUIh6KB98WJRbHopXqUCY3
+g3jHGydC5k3ANGzlVDafFgzl/komO4qjZgKfZzJNHw4DlyevOhluPXRs7yQWwgCqlhI5hGZ
kT5RxCUd1BGZg0CMXjr9mPeJ+r0Y9UKRxiUgOQqtF5LxjRB5KMKN5/IBWSs8DAnPr5v4Kgwq
V6ytZQswOfooApRwpNiEiGvfVoPeseKhDz3bAuAG3wQUTVksRoRu8kVYHLdVLNvpV6AxUxwc
OrQbjVg1IBQHESWsT2jNTrxCAxIqG2lX6NYnoPHGhIIUGhFAz/gyIXLf6DcK5EahIfRD2yoU
d61a41m999xdpa3KLhuOet1tsgcV2qcMJ7zIYheWgbNAK8OEVV0D3sdOrIGEcGqw0SyxRcHk
6GIThXp0F46oAjks0QIyk0Qg5v4aw7KhbUlsdwkck7XKxaebAfHkf6hent7fnl+fn369v31/
efp5J6KtFHPURzN7CSdYtv/8gPI/r0jpDPftaZVorByuWZgQpsQEYqnBfcrW325sKwC14jg2
KiyrowrTXdZQXXIdWW0T0WRcNVDUFGHGutMFQUwboFeCrW17mFrb/AHzDZQJDsJAgxP3Pws8
Dm38cb4dIottXeME04mAXfqWIF7ncuP4NwQBIAidzQeSwrl0vci/TVNWfuDTZgTey8QHFdw6
ANr1F8JOlzjQhpdw9eBCg7i8JIGqOYsLdv0mKuV7Lf6FVeA6ngkz5+Rc6XzZRJPJzARyo59s
ekysFUad/4gJnJvrgfeAzFmGXJXHS8Lb3IshLc04EJlsH7AW90zOPKDgYZNeuber9pW6gwKf
9TknJvAn5T1Vx2+32lUul59J2ST6pbBkzl86vQCtZuyVYl9cMKZHUw5MtkKuBPje9Sie3/dH
xZ18pUENnSvoMhXRHZBqcppZKDSqlLSiUAOJw4Cue1ZPblbO0sDfxmTdmhIiYTRpfsWs64VG
qStRRtqdC6S50zwMVIwqqSs416PWqkLiueQAc4xLYfasDvyA7g7HxbFDd8iiwa4EQrinCwvc
KSBfha1kRV9ufYfsHKBCL3IZhQPOHvqWOVo48s2GUW6IyAHjGHI9cSM7uZ70A1nF0INvnNYq
Ko4tnyeOrdsfBzRhFFJVo/YRxDbUrHkQ7c4ayM2GUQkIN1tL7XEYkovXUEI0lGdhHBwZUFqx
RhP51rppnmIqVjpua6sSlCzHuzGEsRfe7vCkaWsx/RS8EpRSRcVbW+NJ68L0fTBabbBR85nK
uDgObq87JAkt27JqH6KtR/tKSFSgEZLmJpXEo78fMIFl2yDO4gSvEpEK7kqiqwoSJmFwill2
T7uPL85Hzbf74+eM9oqXiE7AsOl9xFE2bs6RpKoh0ZwrunDH+naXdd21LbTQ2UNRX2/WuSrX
VL2oZH8wKpPWfbsREAKpEemGjRL6V8aodgAZU508cnz7MgeRnJZwelDPnZA8rAAVexvydOCo
qKYHB7SowA3JMKoKkaaqqjjPDy0LQiifpNuJThRZqw9cnzwqJdXV1rTnfjTzNzwUJSlXfRAo
ISaxne6C0Gdu1qyrRl2iM+VkVLJqlEWXKNg0S5o0k3MTFd1YZwtCgcNGscBDEv7pJNezfCJe
7jX1dUYRX4gUrL42ZK14Mdha6q1ATbjfpVTVMtmlam+3XlRNbfnUqqLa5kOJ8YbIWDaZPi8I
qZuh2BeKa0PG33AqOmKGQQ4Q0VHm+KnElKasqKU8lmtJdDtSY35hfw6Rr757EQUmYrktbpHL
3x9/fEPzGRGP5JQzjEdC9C+V3S3hBwYgL8ZUDgGF0LQd2fEyB0qRO8Wx/O1IRd+2rAR9Vu4t
qQSR6L7qp5AfatsI3+9WFFEzdK/CXMdN25RNfoUNuCcTlUKB/Q5Dgy3XtmpTAomZ5Pgt8h/A
qdXmBEGZMf42ued+qZaGMHzNCDOWYsqf6qzclU9Dmsh5ExE2DNpsnDpWkYMClCQ8z6qRX01a
BtKGw3L9Af3nKGyfHLIliTNaaZ6/P739+fx+9/Z+9+359cezyN+t+EFjORFcJ3IcSl6dCfqi
dMON2iAP/3BpxwGU0m180WddQQeaTCQ9JrB1k/eTdZUZvxdrx4h3qd4kB8IQNeeRv0vpjpQr
Cd9BPO100bcieaxSy30Dm5iR/ZW7oxbqWJpZHAwQzao0b4+WztTN8ZQxyVY9AeaQv8lwMdnP
TCPumAMSPDuO/OFLDpgKQVUdyT6rVO2xpzMZSL3nrpKlJTsA3yZ5pm8cWOwqhMkZ6Pg85UwN
AMfHOmHdmJ5huquCwJSnVKuWX4ATIKKGFW7ufIHD78zq1ECFBEsWDiJkVwWqKi7GPhZOJQBB
XqniHi6lCtg1IKOroJbV2eJWkr78/PH6+H937eP351dj63NSHvIWuGkPvJaMJyBR9sd+/Ow4
wMWroA3GevCDYBsS7UPHsvFQoOrtRdvURjGcXMc9H2ERlWQtKeaarPQNKnA4zTd72xdVW2ZU
tVlZpGy8T/1gcFWvt5VmnxUXkAnuoYMgyHg75tB3ckqJK7pM7a9O5HibtPBC5jt0/rK1VIFR
hO/xn20cu7RtXaKu66bEwF5OtP2cUKbUlfZTWozlAH2pMidw9E0kaO4PLGWYyNgJaHxR5xOb
hPFytlHqbCg6zCCBn1EO91DTwXc34fkDOujSIXVjb0vR1c2JIR1fYS7ZNYkkDCOP0dNYsXoo
MNoZ2ztBdM4CyuiwkjdlUWWXEY8R+G99hCXQUI03XdGj9+thbAY0hm8ZSdWn+AeW0OAFcTQG
/kBtVvybgTBfJOPpdHGdveNvajVZzUprUdFvflXHrmkBu6yrwsjduraKF6LYI40TEm1T75qx
28HiSn1LR3tWASsDiTJM3TC9Xd9Km/kH5lFjJJGE/ifnIue0sFBV5LrRSEymbZDFMXPgBO83
gZftZTMDTc3YRyPS7KGeD0YkK+6bceOfT3s3t1THVbjyAZZX5/YXMlCcQd07fnSK0rPlM2ai
jT+4ZeZYlkpfDLACYFv1QxR91K5Ca2G2XJNlyWXjbdg9lQtrJR3SZhxKWHjn/uCTEzx0x/I6
nU3ReH645OTmPBWYRrS54ILfeluSDcH2bzOYsUvbOkGQeJHQ9SZpUDtclXO5K9KcPHsWjHI+
r44Uu/eXP78+G0d1ktY9LlXL2CQHGGT0j0JJ3te2xszAAVRzh30VXUJJ3PjlsA1d9xbueEn0
+cNTeERFnlKsuQSHMuyhaDEaadpe0OSdZ+MuDpyTP+61Q6I+lxblFjWJdqj9TUhsLhS+x7aP
Q48yomk0G23RgGoDf4pY8cUSiGLryPdAM9DzN3ofhKwxTa6lD8OhqPH1ZBL6MGqu42kn6dD0
h2LHhL9CFHo3sbfLRjex8S1sFGhYOGb27cY1hh0QfR0GMFOxTXPEsm3qer3ynIkL+jz9KnAF
Vl9Cf3MDGymvhxVs2up9UgqGHv1sYVZOWXqKAvISYtlw1SFt42CjyaakPD8BJ63B4BHmBpcL
Z0PNTsVJrXECEi7v+KVd0uZHFXYAjgZ/CZ86VTFGzH3RFVZ9GM1WIE1p2tcEJT63uvQGYL9T
QUkBGng/PmTV0dizpWsdeRDBTIa97xpdNxyKtNc6IRRmY6WmlmhnXGV0SZeTSfnUqzoVNpm7
ZydGc3yQFbN64Jas8eFYdPdLNNz9++Pfz3f/+ufLl+f3KR+yZObY70D3SUEKlWoFGLd4XmWQ
3MnZjsWtWkRXoYJUTqCKjcCffVGWXSbHLZsQSdNeoTpmIArMw7srC7VIf+3puhBB1oUIuq59
02VFXo+gbBdykklA7ZrhsMLXjwcM/CMQ5IwDBTQzAKs2ibSvaOT4gjhs2R7E7iwdZU9iJD7l
TIn4g72YbSEKFJ+7TqY7tWpUvPHzMQsxuTa+zdE7jfcCOBt8m2nj0Fa0ugoo0PcTUHBs6OQK
6gUoAPQtJpaHExPTN9FjV1T9oH52AyKUFhAWh81NNf9zXNs8HLH2KVOMYtqVfsXPjy0MBD0Z
XXFiBkD3e5vBNi+tGU83UUTq41BcAjzkg6UmbkJU+8RBqiPhCrZ8mECaw8GGq6v6zi1A2nin
0dlQPe16iRjOE63Ygg5YhTOXNcASCsuE3187dQv66f5iAECfSOQw+jNYH8xT06RN46qwAcRB
X92jINqJtB7yTro3th11z4q7CnZdoYY/WqFwWDA470/kIzKFJjn2g5pxAwcSvcltQwniwJhf
hk1AKpz4rcJ9UOVUGSptTaX3F6NTeeRjGz6fqr0NQT1sctnjh/dWJKtdRCTyFBSP4h6f/np9
+frt191/3SHH0vL8LUwQzTVJyfp+uj6Ue404KuPYhF4WvrWCleJ+SL2Amt+VpJUjsqxg843Q
iptcn25W+8DzJZdZSldhveReSYjXWgoyjkOa4WtUZATUlYY77DmMboYjKc8iiQTE7cAyUMJb
7oNOzg4JH5DZXu2tjZ1gtCI5zNiK26Wh60SWoeySS1LTwsdKNXkU3+7BNNvzm83be2EuD8II
voeWtiEcgsBNSdFjEuuFreHt+8+3V5AwJoVFSBrmXkuPVXU1kyUpYMyee6zq/o/YofFdc8YM
MBJvAeYGB9YeRCw609icnOR2LxeG0OTKyxr8PXJ7LghhNR1iWKKBQXQpnVYiScrj4HkbeYaM
y/217r451mZKzgNI6Mb4AlDuOfxcI3EMXVbnw4HoGZB1TDKmHIlqpke9Rjf6H89PmB8Nu2PI
l1iQbdDSLS0bhCXd8aK3wIGjmkxKJWhb8oqJ446gGpRqK7usvFddORCaHND+bakmORTw66rW
kzRH5ekGwiqWsFINMMNJudJr/YLkaoTXUfAwDXlTd/TLfyTI0FNir7ealZntJSxHf77PaPlL
TGy1KzpaoOf4PXn0cVQJ2mlz7NWhOYFMW6aFCoQe8PsGDXrNVMCZlcq1pagvO/P7DRWcXzvN
vwOhBUbw1ECDBvjEdh1TQcO5qA+s1vtcY5h0kWFJGZMy4ZEILMMieK8CqJtTo8GavDA3xgzF
H63sNDbD1clHcHesdmXWstQbyURsSJNvNw5R9HzIsrKni4lFDlJ0BROc6QNQwTx1Fo8Fgb/u
QSKyMJsRFGG+0rU9haHc+2Y/aGC0TXeZtikx+3VBLKl60FZe0ymWKQS1oH8CF4DVq7A5CXyL
DbXZwMprTUlMHI3JKxODf05gkGHtFU8kt9UpmdKmiCs0WWpnODNRUtgWM0i/Nb+DSXrjk0p2
7QcjNoZM0eElvjr4PSuMCZnutjQgpiMu1SSSCB4yVhkgWMdwPGUaK4JK21LnT12lrZAcr0BZ
LycbWkBi18hVYobNT811qnc9pCW4fUcNhc4HgN31mc4w0NifV/p4DwfMnCbCMVpn9IhH+dj2
lKbBOWxRVM1gbOhLUVe0ZIPYz1nX4IdZ6vx8TeHw1rdzD+wT3/gcdyRcKKPTL0MWKFs6vxwl
bqzpuiiRiOcZQz6gJrhcoGMOKnxxIVvTK9Xr1N/0UbTHfjc2h6RQTYdyX5CC8PlcvUIry6NJ
kAaGIqGSSdbZmW986QTJ8KoNtVTlFFigo8GvKSLOdW3JeTndrkPOVeNLSExdD4dqvjoWAgUV
UJUXZLXveMGWspALPMa187UP4smg5Sd6KzTQofyhr0MBPWNIUNnc0DbQBb8lw0Zw9PL6RC0l
QizfqNaiWIom8Q37Ru8+AAOi+21ARzWZsQF/O1RV8p5dcOprvRVMsZQFK984TsBYiVwwA5W3
9jMwVi9m19EK6LuXhSD0bxBMz5HxjCJ5FycyrSui8jMl9XIUEWNTLLvU0151ic8b/GBrHbvV
tKIsIP39FocOCcN3Fjq0TIKtK9vCRRVE8LxlyQf/a126ZmQNDi96392XvrvV25kQ3ppGZt3l
d1/e3u/+9fry/a/f3N/vgM/ddfmO46H1fzDkMsXQ735bz8DfDT6xQ5HAOjd6dAjxTeVFeZLN
gfioWR9JHvVh3RjEnqfefS1YL9L3p/TwRtzLvD7+/MYTYA1v70/fNIa4jN7w/vL1q6JJi9qA
t+aKDUYGj3M6MLXbM7YBnnxoqHsXhSwt+ntL/dWQWjCHDISfXcYGC564a1DwiZxBUsGwBESm
Yrha0GrASvVDprB3fCb5yL78+IVpyH7e/RLDuy7C+vnXl5dXzLr39Pb9y8vXu99wFn49vn99
/vU7PQmY5BzUQy1Xt/pVrLKlrFDoWszt/Z+QoSGHErXVETum1jERadyXZbbDnUlvMKIVvBHB
6GnocyrNB3PdK5z6rCjLTLLszcahx7/++YGjyg1vP388Pz99UzJQtxm7P7Y2WY8qPTecgdBp
erYjVP01O8LzJCcaar7nWvrDoRjPj54Qjp7zVtgpbiQr4XgeQJkYYtGnKtFs7d2QCPmL8h7A
+GL81ZNkTl1g+kWehDkp8eUAYfoQMMwPPg4XkFl58EqU5rjD3bkYZL0bCgNJrvgaIGyJLSHK
qT3UBPIpRF3V59gVYvVVO0wB6sQXtRbuOy+BziO7FIiR7+n6EoZW9gtByIMC4U4uCkSEDCsA
pqayqk7jhZR/BUJNx1T6vjNVu9oZystIf6RIZ6L0QmQw0auYoJ+v9QO+o6MrU2lapVoMInno
DVDyYICOwNpHppbmN0oHHJqxyv+ftStrbhzJ0X/FMU8zEdvbPERKepgHiqRklnmZSalU/cLw
2OoqRduW15ZjuubXbyKTB5AEZXfsRkWUTAB5ME9kEviQ1RyDdEmkYBANYMKWzo3pNgWBVZTE
2MwXCCrow0AV66ataz+uQx1LkxnXNL8M8J9rblg3cnmLUJar7frq9ALALRj8CjJdJ/i7hviq
qANhqxOTZlCUJit2cWudw1sbabEpW4KW3TngCaYEuUlPHKqNN+qbabsfnJxaGvgH6tutbt5E
s9l8YTFKU8thKptk0AdhkjTmRVlt+zcsVJsUdHC4SB3DtHdX6cnaIF4xB2TellwVqnc8StZH
VKn3CkFMsMrWzwSQ5lve3/5mNIPcKxsDyR5z+PtRJDF1R2q81hZv6FsIU5WQMoFURtUOPtLw
cX9AIgLfPy1BcwuwqxIQpGYcFsKlRIBPHQX7AkYe13tDtNrSawYgZmvf4dCddmvJTOTo2Tb1
tzJGJ0bFkXvI7TqiREMkL1Ryg0oWj47SZMQXuyfLtX5vkkchuhQZ9iH8akRWqnzpXm7ie4X7
qqIeTL1xnyTIov1mFfcxIlihVZgB3ilYHJqhJJRgxkdogw240VCzaPIAlWIHagqc/XiHvp3C
wTXZGpgWsP3eTr+fr65/vhxef9ldfX8/vJ2Jj3KHePWB6FDepoq/rdgjuzzLbxJ8UxyCv2Vi
Ppt6T0/VZwK1VCa/gaP6Px1rtrggJo/RWBJ5C7fCWSLCro05AxwtlYhg3BEtrwzTuU1h9AcG
O2cw32fzo341A2Nhs0jriM/mt6DQgD0jcy9WMMjKVDZOUjiWBU0wyloLlKHj+pf5vsvy5bBd
WNyrKgZ/09Z1chDyqPMdW9h+xvWK5FgLqM3l3MVECMlBYMEaVaEMCE7aQPdnGPGvo9fOwmKr
KxmstTTmz9j8bG8qPzaIxMDHfg8dOctcB18QtPR16tnjtwlgpU0K22m4cQfcJKkgANiFGQfj
M3Gsm3CUe+hLxWZDl8BuNpchv011RUe3trMa5ZhLjtSSHdvjBmPL5b+vYBkeRN6QsP2IKz8N
VoCEzEwSOU2DiJ++UXB5PWhDcY7IW4asvg3cukxBwmPhrPrsksmlceF4Ht3J+36Q/3VI8twQ
AX4AWdsWC44zlvPYhQQLXJ7RWNKffVLS3/PXCCNJ55Ov4TgfvIZrs4HZx3Ieu5wggT37iaGX
S6HjfAfjI1PefE/v3SlX7kQX56ESWtrY52zE44reAc+e2+Oltec5fAt2XO58MhIar6g9z58s
uonYRYlsoxC18NKIQTvqZ0Xl5vpJ0cT5eLsHKVb9CMGQI+ze8+LWJzdYbtZHtWuxwzv6lquL
ANu6PJ82Ule7LiPOEbJbxdb+ftx3SVjq9Y3VB25XRVBFptcDlfpSuWaEiZZzA9em27xm7Ym6
pltBYrX3cw3bcT/MIBrvDpojdwIxmXMWRdwFU9di8cxiFJUshpbhdirfwzGIMX3PrQfA8dmQ
hEhgbo1Vjn5T5Ns9V1uPMRJ5oeyyUFVH3qVFVfislp6FyfShQLa80iGbcMzTE4Rh5Go0NnOA
eZ/kwjoya0Kuu/sWC3mToUEsg1uIC+PtdhsoezVZYMnVRW7s41kGuz2vAoiAmzj6N0042Ctm
6bx0+uDbeHJIDYyqltqNktRmKHKkvJ3vvh+fv5sf9oL7+8Pj4fX0dDh39g8dMBDlaOnnu8fT
96vz6erh+P14vnuEzyAyu1HaS3I4p479r+MvD8fXg4adJnm2bxRE9dyl+J4taQzfTSvxURH6
w8/dy929FHu+P0y+XV/s3MbIIvJ5PtMV6yy6P8ysdZSH2sgfzRY/n88/Dm9H0pCTMkooP5z/
fXr9Q73pz/8cXv/rKnl6OTyogkO26t6yBYdp8/9kDu1QOcuhI1MeXr//vFLDAgZUEuJPZ0EU
zxfejO+QyQxUDtXh7fQI3+c/HF4fSfaWUsy4H6qqHXdMGK+W2V7pNCPT6Xb0Pryejg90yGvS
OAu1D7OFbESzLjcBXOdy16N5Ir4JUQbk83kGl15y4pdFHue1GFVtc/f2x+GMEMZG9dkE4iau
tX8CBNJh+8rIhnzkgY9Z4BO75vefdRKn0WqrHI9YgRu5uE05Y26KNFonEzZfAAkhd/DuApKN
1hmnaQAQGOOb0mvwUAlTZEggHxSuXlGQiKidYFNWsWz9mCy4AABJM+lpo+gDiDWGZabM5Wxh
3mt03BHS7FhEJJ47s9m8geWZZybEtCdUZyQyM9U7xGOdp5BIGIXx3OJfG3gaIZvhCRgiTViy
XPiaKn83cc6yjVDAiMPEvEBcEyEZs7AXHKLvQr7+Axb/mKfDHxi3GJAmzJyFy+eXlFURjsSb
XBDTro4sqtG6ED6e7v/AFlDZ4eF4Vx/+uBKncNgi8KgcABS4zs9qZz51TzPI+HN/alxrpjYN
kQvdZ3IC6xUpyk8iLbEJ4w8kso+ySLLNBxI7BQ/zUTnrNpsLLw/IMFbw2bdX0qtPZWqbmX4k
v/orlXCCj94dhD6o6Xz5mfpNRIchUnMeJYfILGx/PlFjYMEwvFRdJaMHxmdKgs4P1+YdoCmT
fTa3XT/aprKbT8QcplKLiVsiJONRJXvEbBuKVRourzG9FqpDiAbyCFaOYF9bpjsHW2C8zfap
FpY/MqhsmWFp29bAJMui2OZ77oZF0ZswRF9qJcmz5EHMn/F0GzamkADAYFYFTF6p1FLX/scS
9idkxiUNEgtZmYVbM/WUnGv3YsIodvh0U+W1Rj073FjXX0WZ5HK/velOoXp0iNP7KxclVNmJ
0jDFiiL3vVVMNj4B4OVk8wT7qnLVm5oyVJJxoMGGrs0ElN7EuxrcU7FfjyFRFGkDGnRQgTMs
bi9l3FVVQb2VCSxr4S04b3gw70rBt7OXtX3bUv9ImXIgdgIyp6Vjj8Zkx97mN3nxNcex+SAw
r2mDq5zaAMKsKZPan60uzGajv1AeQZKuWOAPbTeRFBiNRNOCMjFJg62kPr7A6fB4f6WYV+Xd
94Myj70SIw+atpCm3Kgg1ma+A6dJy4DYeLECl2DCRwlkn+zm4kKRWqDPEx+5P3pDs57KaGDN
7+WdhLYMKAMhanlE2m44851i3RgWKW1qbG7WDidDEIa9YCmdGWtUN6skj+TxkmxSvViUCNUu
q29QSfnTVZp9rT7Zjg2PKEd0V0HTWEQ3qqn7Voen0/nw8nq65xx9qhh8z0C/ZqcBk1hn+vL0
9n28jlVlJnCgNXiUarpJQeYuXTkkv75DYGX5mlSD9fLp/fnh6/H1gCxjNUPW/+/i59v58HRV
PF+FP44v/wDr5Pvj73K0Rca139Pj6bsky32ZNEl3mcGwaUxvmrCvbNjF9B7eF84jZYYJbdTv
MsOvz+asb7n25a/r18Ph7f5OTpPb02tyO6p3m/XtNgnD1jyS7cyP8tIm+f+d7adaZsRTzPhZ
TeH0eD5o7ur9+Ag2/H37cw5mSR3vVZtJQl0VaWp6ULZlfj53bfyElC6uXGVSm0W37NQDZhTv
gpIN8gwzL19XgVZtEVWFjf5aBQS+EBgiLKcOIgNbJm+iQm4oOXulI+W6M9tgtsW9pHrL2/e7
RzmOzCHap2T5VBvMVtg9V9NEFRDfV+i3OhktNfvj4/H5z6myOW7vWPCp+dtVClos3q2r+LZb
GNrHq81JCj6f8LxsWc2m2HWwnkUexVlAlRYsJpVyuD0L8pAHuyKyADsggh2LEork+oiNk4XK
vSGh2ZBXi8aDeWgHqa/FObd7x/s6HPxt4j/P96fndvEcBwvWwk0Qhc2XIETnj5axFsFyRgNV
tZwJN8mWmwV718Ufkga6EZINM0jQ65bRX1KZFSjr3OPDprcCVQ3x5AImqcg8b8IwrZUAd+DL
bygl5IyQ/7skArjcXKtvVHEoU3vuNFmJ3fm6TSEq1zFdWgT2jE+w2i8fGg2ww9GacMWSqTsF
oZvuIogLbsOjYKTAv4F78EabzyNy69wUR2wN9Z/Y8QelGYmqUgVMyV7EwSLiK4Px1TLaBJxS
S2qpJk83R0YfBbvOi/YpQbZtCRSAThFxGMqWQKVWWWAvLPJMQlbpZxO9cJWFcohrHDxutQkc
nGcUuAT9OQuqCN9Fa8LSIGAjHAQNoMps3Ih2j6g7BnwUmeCBZ77Bv9mLaInfTBEmQxHf7MMv
ELeB1YdD1zBtybJgPvO8CXxJ4Pq+mWAxY8NRSs7S8+zGiAGvqSaBmNll+1B2IHfslRyffFQX
9c3CxQaXQFgFrdni/+V7dD8C59bSrrjKSJazxMftaO7jMaKfm2QNkYYBc1uqaSlhL7H3cQBf
8PdgO0XGrY7nC1T+wCPZi4XJRgq0uv5vM+3IcZUmuWOWFIYQ58+eyCvOd3FalLFcMOoON71P
er2fsza5SR44+71ZkPaanygnrUNnhoPUKsLCMwhLAjkHAV5dnx3iwZ4CuWdh6c5w6OQe1zmr
fW8O17l70lpZnDe/2bq+AzUPtmbMU729yr2Of7E2pKPZGCJSKkNWRNoJn3USyGS7k+JrNU6s
hU3yUlQhJzs3XIGZSU1iT3ParX3boqT2Um7f1fSvmmasX0/PZ3n2eEAbAKxqVSzCII2ZPFGK
9pD58iiVVwq+loWzNihuf9bspfSU/XF4Ot6DscPh+Y2osUGdyp4prwd4FsKIfytGnFUW+3SX
gWe6E4WhWFBPhyS4hfWOaX55dp9bOE6HCCPXakwvQk3ll1/NA2AgBQ03pAFgrwoQtcWmZGNP
i1JgqJDdb4vlHrfkqOU0JN/xoSUoe4hQHn1OzxQNr93htLpB8TcM9qCiDPAybP54xGSizUK0
Da/vK0TZpevrNByGRkxjY6UZ8ry2V1pjGz3Y5bi/06OVt+3xLByHAEK3U2VfUmYz3uJasryl
y019ySGf/uF56dO6R2UBoKqYImYzbLGb+Y5LUWHksuixXg/AWFDEFLlizuYsJmut3E48b07k
9YoSBfyl2MXm7G3OHt6fnjpAS7qItKdQBaE50loRT+ul3K3ASLLXs4n5D6lCi0J++J/3w/P9
z96a6j8A7xFF4tcyTbsLMn35re5q786n11+j49v59fivd7AewwP1opwSLH/cvR1+SaXY4eEq
PZ1erv4uy/nH1e99Pd5QPXDefzXlgD588Q3JfPj+8/X0dn96Oci2NZbbVbaxfbJ2wvMIT3wf
CEeqHBOKK1o/Nt+qQurP/F1QuXUtb2rJbOe1zoDVsxWLUbOTeuN2vgfG0B2/uV4uD3eP5x9o
8+mor+er6u58uMpOz8fzydAv1/FsZvHuFXDyt/jQ2C2LQEezJSEmrpyu2vvT8eF4/jnuwCBz
XBKl5Lqm+9x1BMoiixkYhY5FA6QQ9LQsiZKaxSuthYO/T+lnc9Bc11uH0zRFIndXfDCQzw7p
vdHb6sVGTr8zAPY8He7e3l8PTwepiLzL1iPDOTGGczIM534wF2Ixx8fQjkLlbrK9j14yyXdN
EmYzx8dJMdXYpyRHjnhfjXhyo4EZzM6WisyPxH6K3jdztwBON4uGW1Hgy+NxE32RXU2OzkG0
3dsWvtgJUtey6bOcaehqJSgjsXSpY4SiLX1uLgRi7jq4yNW1Pcd2tvCMVbkwk/ILmxJwSG/5
7GLEe/nsW9QYSVJ8NnzepnSC0sIejZoi39CyiJt7r4iI1FlaE4HBqRAbnUWxbMebmHJBOo2X
2YqUfBiGLyKwHXy4rsrK8hxyNqsMt6p0J/t2NmFvL1et2WzKfrNlcpDoeRHYLp7dRQmeM6gi
paypY1GaSGwbR/+C5xm9O3BdPBDldNjuEuF4DMlch+pQuDObX7cVb87diXS9Wcsu83xy6aFI
rJUNcOb4VkwSZp5Lmn0rPHvhcDFudmGeUocWTcHWgrs4S32LnBAUZY4pqU9u3X6TfSCb3Mar
Bl0V9Celu+/Ph7O+emHWi5vFEoOMqWd8S3hjLZdkautbvCzY5CyRrn2SIteiqb0I5OO6yOI6
rgztokufha7n4Bhp7aqpiuL1ia4WJrvrenmM9cjlvMEwB1rHrjLXtqbUnG9BFlwH8kd4Ltn0
2ObXHfP+eD6+PB7+JMcYdejakrMhEWz3zPvH4/OoT7k2TvIwTfJLbYyE9VV0UxV1h4SN9iOm
SFVmhy139QsY7D8/yCPF8wHXBl4JsI+qalvW3K02PUIAqhYv1VaFL7DdFZ+lDqbw8O6ev78/
yr9fTm9H5TcyGvtj7FiN0AQ4gTGdVR/nSjTzl9NZbtdH7JkzHB8ddmGKwDufXsLKg+CM9dGF
86CFfVGBYKxHdZmCenrxBGhUk30F2cJYE0uzcmlbvFZOk+gD1OvhDbQXbpAGq9LyrWzDjoRV
Vjos1E+UXst1EYdwLoU7ce2vsPHJ2lNa3PqehCUYbuFPXxARzjOfjbWtTF0qJDyfKumaMnWX
L5nufLR8dZVmqLT82pvRAXNdOpbPlfRbGUjtCl1itART5xz11qBpPoMfDu5EvOEQZtvvpz+P
T6Drw6R5OL5pj6rRFFSak6nAJBGETU/quNmxo39lE12xJPAt1Rp8urD2J6q1RbwgxH4pRwyn
HOyXHh4FkJLARcDG7VoOrz7tUs9Nrf2kT9sHbfL/60elV+bD0wvcbdAJOJ4ndZxR4490v7R8
1rtEs3Dz15lUtondsaJwV1u1XNuxfqieHRJXhqtyr4TWJLagfJRziPcyB14ScRYFwNFwgzVG
qQIyDKSyyDdmIXVRpJOlgLHFJFNBepow3N1wyeJG26qovpKPbSzOsWEDiNZSeZ6hJR9o6+Am
JulPd68PXPIEpOUJzMPSIzOKYSRLaTD44C7RsS+NfDBBMIE0wsAEYlBnEAw55Fxrgd9/KTMT
tp41U8nUlzRa/mDGRjKKvvLXXMADm991zYEAA1cZViWipMUgHxtEVRjS1B9MNRN8QZrIXmzz
WR/4CODW7n8cXxjc+eoWzH6Rbl5lzQaDp7UE0ByavPqnbdJ3TjYW3rkcrUlwbHhKp0gKQVoC
oGEmCK1Z44rJPpxb7qJJ7YaAxXWWI6lD6a35dxLW6HNttpPjCqpRmrQEG69rUkFCxGpaiauk
SSJGUmVQ1YmKiyontUYQRjt53RhIeINqbHZZ32NlEN60k3zQbMClVKpnACU04b+qvi/J1EVY
szH4lBn7dSA0dhsyQUTb4Accc960VNMAlJDbz4cmVyvNm68m3QzA11LBIg+3hyZD+Gbl+zEy
ICuvv12J93+9Keu6YTa0yIGNZKOLnoHYBu4mbCAb/oVAUoivRH6YupoNdtVgHcVNYCmh3fZA
gnS0pN4UeQB0B+T41adNnwslN1FCLhxlxhUZAWYgcQWlBzWPHtZLAFb6pfJl/QH3dKJ8CIKU
y5NhXVSVgVCN2ZHxloyISMDfgXZAzwvSXWHmDUtzku0X2a35DkgoS/ZxOt2FerR/0Epa5kIZ
asUIXAWGUWSjkYX52xovP5i72F9IrJ2gej6pX7kPGmeRZ821SCY2Mix1YTApt5JxDQCady3M
YoG8F9P9qnB/o9Hbgt2v6g1hcIowTgv4zltFMbEKpvMcVQIsVMOAi06YYTPBTEPLUEJa9t+s
y8Pr76fXJ6VzP+mvM+M9Fja6MEyaknootGQwaiszzouqFfD+/LNNSuj5KK+MR3JVFpYZ7zoG
vEhsJ/ka6nm6eqKM+9fqmvxCk/SrNnaqloNqRp86F5fma0XCoinezTZP5NJOMJB1oizoyCNM
hq7KeVQVScRuuD1eQ6cu4JBQudReM+Ox11KJAXu83greQlongmWxCIu6vCDTGpizwc3bsJpN
DA4qxABdp63kf6Pt7vrr1fn17l6dqM3RKZVIdDitM/hsUBfNKhBYsxkYYJ5P1mpgqS/uvI0T
eKxUIQbdH/OYyAxaAaivcUkdzcQBM9mb+nqckSyPzywT3OgeysKh2nrqcBzpvkOOm3goC0A9
mDLWeB2TDyogEgBQ5AUODwgcHU/LiCSBGCR+FaIHKj4ZZUmNiIZXBtoqnsTvqGNuB1dAY1IX
2ys90Lx8HvsCZVswUdvMlw6GbpfE9p2GWQQRTEdYVuNr65GvRilnVknuHETCfgETaZIZCjSQ
NC58WFeceqzumuXfeRwSeFAFiYbaVw7q220QRfgeYPCulEdVqZiU9ZYYzxaCTCiN6DICS+ku
RukJW5uwHCHwhNrksJdHGITXMTikRm1YDHTSD+BGrJbHfQFHFBJlRpKSgiBQx/vaadamjwGQ
mn1Q19yZXvLdcRJXlVeIBEKX8/cfnZSIw23F2xRIkVlDomRowpCzUezsMxkaYMyKNmw2qLQv
q+h/Kzuy5baR3Pt+hStPu1XJxHZsx9kqP7TIptQjXuZhyX5hKbYSqyY+SpJrNvv1C3Q3yT7Q
SvZhxhEA9n0AaByW1RX+Doa8h4qziZwIU2gRMOCAMfswAIE0smJsGOT+cI+tkAT0Le6hetEm
qU+tRkyaoVmjyKFhv5i3gUy2X+6XqTvcPnHVIgcNg3yrRpkyd5a0zuwoIKthYBqysRVPuhuQ
2xJqvnORuj1PTp35kABMykWRqXnwweQC7JEHFqAkUQNnD776VnrzivxPOHvoNJZ9Fcjlo1Jf
2PEOenR6F4jQNOAp9WyPvasb6yaxWSSn98MuQk2lvVcVpJtgLAA4se3+CnS/BoTI6Tcc+BDE
uuq2DI1ELae9sUSdAXhom2qKSSvgYoNVKaY5w4PanP1a5b4wlEoDwGAsJMhTdo6tYX4GDY26
bovGzsJSwUZS4G7Bqjw0LIoi1DuFbSpuGSVfJ1nT3VDWLgpj6ONlAZbijLVNkdT2Maxg9n6B
UXCWdNSSiaO1w7b5cQFTkrLbAAzz84oKtkQHf8wKKBKWLhgwrkmRpsWCHEHjK5HHnA7QahAt
YZ5lj4m+GGQZh4EryiGjVbS6f7TDsCW1vB7Iy15TK/L4A3D8H+ObWN7343U/rry6+HJxcRy6
Bto48VB9PXTZ6vG2qD8mrPnIl/j/vAnVntVAGar7JpEHKXn3Js4ZqyB9EANRYCoSTCfx7m3/
7XJIbpI3zlKTAO+ZQEKrBdnrgz1T8v1u/fbwcvSN7rH0wSE7JTHA8aVxZYYkm/MqN5vsvHM0
WWlvFQmg712LwrmNFFCgFGEar8/aKW/SiVmjBgELaCaVAREyibuoAoHMgA4K4qmYsrxBjaj1
lfozsg+9PsAfQmPNYFoKPPNhJBpOBvDLzYxc8KNfGFfvNruXy8vzLx9O3plojMSFDevOzHdw
C/P5k+VmZOM+n5ML2CK6DASJdIgoXZlDch5o4uV5uImXF79T+8XJ7xD9uom2PZuDo9gFhyTY
w4uLIOZLsMovn6gY/TaJaSTqfHwawpyFq7z8HOolnLe4ALvLQKknp8GmAOrErVEmmwpOWl9Z
eFp7itCc9vhPdpt68BkNPneb2SNCE9HjP9PlfaHBJ4FWnQSadeKsq3khLrvKbauEUuodRMrs
RyDo5nZJMgscxwzSFBzEmrYqCExVsEaQZd1WIk2p0qaMK7jVZokBVm0enGikENBEltPOEwNN
3grSXMHsvJPmu8cB5zsXZNovpGibxFj0ICRHlsZKA7ocI0ak4k4a/pnBj3qGpegW1+ZlYSky
lFfY+v5ti/YtXia7OTdDDuIvYPeuW47KE1veLnlVC7hfgJMGssoNSjTRn1PXK+ay57FTlxZA
RvhQFPzu4hkINbySfabKRBopAIhI0Vh6KC0jYh60Wr5jNpWI6KhIlDzpIUn2RAa0Ba4q5jl0
opWZ1MpbYJJB8rJTRntEB1Ag2KTpxAqS4dPg6VeX5j5JQBxEeUnpgk39MEMmA7/MYDG5gQFJ
NKafnV29+7j7unn++LZbb59eHtYfHtc/XtfbgUvoOctxrE0vu7TOrt79WD0/oCPXe/zfw8vf
z+9/rp5W8Gv18Lp5fr9bfVvDcG4e3m+e9+vvuD7ff3399k4t2fl6+7z+cfS42j6spRXbuHR1
PJ6nl+3Po83zBn0xNv9daR+yno+KJJeFokV3w9DYVjR9Wl2D26Ko7nhlOY8ACIYJpOy8yO1g
ECMK5oxK2hsixSpI9ajAJMZqCdlZje2SMGQKHG4GCa3npceoR4eHeHAYdc+NvqWY/FSqHsx4
pbidi0FE2/583b8c3b9s10cv2yO1eoz5kcTQ06kVvc4Cn/pwzmIS6JPW80iUM3OtOwj/E1gK
MxLok1ZWXroBRhIOvLbX8GBLWKjx87L0qedl6ZeASiyfFK4qNiXK1fDgB0OoOUeLq6mmycnp
ZdamHiJvUxpoB1hW8FL+JfaFxss/xPy3zYybmVc13L4l+9kXmV/CEKFGiatvX39s7j/8tf55
dC8X8fft6vXxp7d2Kyv/loLF/gLikd80HpGEVewkv9Btzsg4vHpQ2uqGn56fn3zp28/e9o9o
7X2/2q8fjviz7AQaxP+92T8esd3u5X4jUfFqvzIl8b7EKCPPsH6uI8oYr/92BkwDOz0ui/TW
dksaNutU1LBYiG72KDlH4Spqfi1uiM85VAyHo/Xeo6LrSWdivMN23hxGE39yomTiw5qKqDIi
Ve1De/xi0mpBFFMkZFaTflMQTVwSexA4Ih0qztlts/BkxMC3Nm3mL0WMGNavp9lq9xgaPiv3
dn9iUsCl6obb9RsnK3Tv6LDe7f3KqujTKTFdCPbrW5Kn+SRlc37qT4yC+4MKhTcnx7Gdg7ff
CDM6o28/caFRz+IzAkbQCVjR0nbK73SVxZbbbb83ZuyEAp6eX1BgOx3jAP7kAzMChprwSeHf
g4tSlauOls3ro/WCPWx2f7AB1jU+MwB8xgKTVwQRXniNfvIY5q0Q/ikdMZXtg/6obvy5QKg/
hDHRiUT+9QvQB6M/jLwqld2eO+RnxJprFoWbx0MN88vTK7qI9HEU3HYmKWtog5r+ZAo8amn0
5VkgwWr/NZnvYkDOqL2PL2FeRyqQGV6ejvK3p6/rbR8Bwubs9WLJa9FFJcWIxdVEhiZqaQx5
PikMdWRITNT4PBMiPOCfAoUAjsa9pphnMJMY69Plkn9svm5XwKlvX972m2fioE3FhNwyCNdn
l5Gx25uekerANAGRWqV+7m+PhEYNrMgv2jISHm4Otb8Q3h+twIKJO371xV0aSscO0rlJfLik
Q10+WMIvOR4kChzBswVxpNyg+LcQeU6w6YiVPgmd7T1HoDvcGof2rEUcevO0aS9hx/FQoyTS
fzqiiA5fnBYpvcFNiqbKD1dYH1j0cril/4sgWIsRq5h4qg6Fxwk+PgukiR6Jo4i2WIzYjWgz
OM5oHZVRAkj/VbHsojw/P6dzso60GYNtRshfBg4GkJJigKCIGl7kzRIbFei6bvWdCHRqpFTP
0r+YcpbwZcTp5kaRenb3MRjtH5VQ9ORlaYHeMdNlGpq+kSK4CVh9m2UcVYhS7djcluaD3ogs
20mqaep2oslGs9mRsCkzk4qocnl+/AXmptIKTu6Zl5XzqL5Ew4YbxGJhFMVnuAbrGp9KBuz4
7irxKCTj57T6U0xR7VhyZVEiLYG0vtXnQDAoyjcpdO5klpLd5vuz8ha8f1zf/7V5/m6Yy8qH
SlMxXFmuoj6+vnr3zmiYwvNlUzFzmEJK3CKPWXXr1kcZNaqC4bKM5qmom2DTRgp5p+O/VAt7
W4DfGA7twxu6+ism4ouuvDYnrYd1E55HwMjYeeY0USpyziqgzafc9hpgnkmQxkzgWOGYnNRY
2fIGlXcphe0dekAMyCNUW1dFJvXINEnK8x47bsOiigXlFQ3LOuNd3mYTK12qeg0w3ZwGr6JI
uNaWsuFoNxNl5TKaTaU9VMUThwLVvwmKA9oSV9ipS3QZsHWB4cx18AXTBzzXpjGWSTFIjehz
0FhcfXRyYVMMgqUBE03b2V/Zsi38tNNf2Bg4fvjklkxrZxKcEZ+yahEWEZBiQr6CAe7CEmcj
+5fxfgmMkC/CR8YLmCuzYw6zRk0CajNZ43NpsMbjIrMHRaPukPECXju17C/uFF/pQEH6Gaz+
bGjMKTgINCT9GUmPgg5BLsEU/fKuU5bPo+2phHTLS+q5WCOlN05JfSZYIEe9xrOK0uiNyGbW
ZhOiXEyiSW1fjZ5Ef7p9cnSyY+dh7MwA4gbCtpfsNzzxyDaJzKVT10UkYLfKI6xi1oubtMzm
mQtCi8rOOkMQbgU2R+8YZWupATmH66RWCDjiLJ8JiUMElCkf2lwzIMSxOK66prs4g+1l1wNj
kLIKXT5mvLI0BMPBVfOmLf1GDfgGroG4WOQHSOrbPJLoZAgy8ysq5X/rkiAWM3sS7a0XomjS
id29vMh7SoxzXdrYAVUWRWqjKu5R6zOYwETu7JW8gnulRyh14/rb6u3HHmM07Dff317edkdP
6uFstV2vjjDO478NgRw+Rqmzyya3sJqvTi48TI1KO4W1wqIZaHRjhu4BZ0afuFZRgn5TtIkY
KQzgCkuBi8twQi7NgWDoAugKaxYC1jVRZL+gBwbEmOdpqjamsV/Twjo58PehnFBRetc1zPpE
VNcogVN2e1mJGcGtGyaJjYVXiBgWxRR4s8o6AOBQ6A+Sm7g2Lu4eOuUNZvcqkpgRPsz4jcz+
ZWUgqjGUcGru4nrqLF+5WeQr8IKZWfhq2PyZneUFLRbyKTlURoQXh3V0G6ruOunRJmo5NQvp
xmQ/sPe8uYS+bjfP+79UHJSn9c58drfNqVX+M5p5Q2zEbOf2SHmuARs2TYGXTIdX0c9BiutW
8ObqbJhtLcp4JZwZVihF0fQtiHnKKPPw+DZnmFjHcYawwE5kfuD/JgXKdryqgMrAKGr4D9jj
SVFbwamCYzmobDc/1h/2myctE+wk6b2Cb6mRV7WhApGyvsfU09K+/er0+OzSXkslXInobJnR
lsUVZ7FKsVbTj38zIMB0GSKH9UtuRn1mKO8KtEnNWGNeyS5GtrQr8tSy+1elwDUTgdDZ5uoT
eYR1n06pZzK5pxYs16m3YcdJJzPTet6EuzOnalpwNpeZQPrYEr0U97tz9A8zy57eWfH669t3
mSVdPO/22zeME2rbejPUPIBAaUevsNtXE6Oj93LnTIRPhq/2kjJDF7sDlegCtYWLJwDOp7F1
JuPv0FwgM9BOaqZdkvCCYqmlfpHYkEHVPMJPkf0TqR14+reG1+4Ymorz1B9BtJj2NBjaWmYo
d7zzpbEpXzYYS958MlKFIba/9px6BlTHc7m9DuXnk7UAtxZweJFoWMV1EfRfUZVWRcwa5cV9
aI4U8WLpdseEDPJ1E7eZGWRH/nYOSQ3Ubuf+YBQTdL2iz586bSc9GbU0JB556NpZnnqe4YpL
YQ/7lfaYA+OlzLLa2mHG+pqjGbL4kobn8eBYSA/nTeZnzuwxPkQ+f2srS6dRgKyoLWZUAzLs
lBjmsQm/nn3Uy7amQsUFu/tG5p2SNmgHBlQfpMgmBu0m1bHCatOG0UHIREuqiwGCmUug7fkU
1n/SMbFe4RqLmWeR88qL8fgCGc0JVyjLONy3BAOnWN9IyCFDvfHocS7VmYrBpMUVIDoqXl53
748wiv3bq7qTZqvn7zabBu2P0FSwKMh5sPDoy9zyq2MbKZngthnBqERDkXPMc9NvkyJpfKTF
l2Gan8wklHVQysggsdtKVVU3a2HCGlbPzYWsLCMH1NCXk9Njql0j4a+b5dC6rVpcA0MCHE5c
WMENDk+cstMGHuPhDRkL8xYazTEJtL1SsJNzznXgRaVgRuun8bL85+5184wWUdCKp7f9+j9r
+Md6f//HH3/8ywgmil6lssipFEOGdMKm29bNYSdTWQae2cFjDPUtbcOX5jOvXvFjlmv7AKLJ
FwuFgXuiWEjrZYegWtQ88z6TLXQkVoTFvKRICTBrCpQZ6pTz0j8u9ehIkbqX5KidKNsBOwYd
ZR0V2dgzT8FZR0ngo6iOVZkLJho/ysb/syLs7sIx1N86g2wBF2NTMVNtJBl7NHNu85rzGK5P
paYlbmfFE4QOUkK4Mo7AvxQf+LDar46QAbzH1xUrP6ecA2FryvUVheCwEDP1v1DOBiBYkGtd
MS6dZLyAK8JwyiJglH2w8XY7ogpGL28ES4dglFXUUhwqvQ6AuJNppQi488UoCQIO3f7H74hh
QiK84aUsOJyspyd2MXJZ0OImYPk1YXYwBlG1+uns9msttlWOMlKvF7n0gV1H3YfRa7mkBplS
Nq4KYacVK2c0Ta8nSJxVTyC7hWhmqIFyeRiNzmTkEyDAlzCHBGPuycFFSim8uoVE+kNVyojE
LwKHduJNSb+NGUYEtJ1oJIjaopZiIWq0ismTp1bbp4szUpwSMbCQMgQizJKILS0RcFpiOmsI
EL5rzmsMP9XV+C9LuWoRDTRdk1E3+UitiErR0oVJNG8mN2RQYoNORWDiTXZmSE/yZyeyEpiR
LuFMB6yh6mkCJtcDBe62oJHOSNUIugJA6GAiyosM1yS579xJM1WFzXq3xwsDmZYI8yGvvq8N
TzKM8mLxuzLsixYHKRcuIgaZgvGlWnvu2aSwclcEbtL+lEZFnQyxr6N9GFJqRhMZWuNEbqxw
eYZqyY4pYiJEWqdsYkOUDO8wHE4Zpo/YuG/x44zNee+cR64WSSWK/jwO0yTIUQTQdmN6/dAh
UXIeFTeeGAXiEYDV6dWVZpIfRT3OKZJp7Yh85a1Qw0GuF6RE/WPV4nOG1ipZyOoamsXVs8jV
8X8wt4fB7FdwTKLWHhcPHpBoIkq9KvBsWHi2pxS9ATx3KqVQ/x/2t+SLkMIBAA==

--UlVJffcvxoiEqYs2--
