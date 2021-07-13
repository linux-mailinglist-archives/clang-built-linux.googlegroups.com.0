Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPEKXCDQMGQEGEOGERY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCFD3C78F5
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 23:27:25 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id t10-20020a170902b20ab029011b9ceafaafsf34729plr.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 14:27:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626211644; cv=pass;
        d=google.com; s=arc-20160816;
        b=jDkn78k/aTZjJGFubRpJVYAFAY2+xVVlESULPOPQeJ6GWuvhU3yV1Wxt8izwq7UkNx
         7iS4NeHjl+Wg8SwXyPz5a8A+PDbz+yg0Unx4eCHyGOL+zsJJGBzFc4IDGfNllfpx4puI
         SMLqjPgIRwHmPW+XgGWXBgqFhiE7ZTHPNnzRizZ4EHsKWkpwLCVwWySA4X44Bh5RB8kB
         EmapbHCGt2VVDZjyLBEd72tSy5+yEHx3vngdUh1ZskDx04QEKtqNuhcywudIwbKJ8g3V
         sScgY2YcdWUEQhijPpXGRWFBLHvoF0KFsCPe2LuI/DrhTgOO+ct6yZzwfgn3R7ADxqda
         kQhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Qb+108eLO4hy4TyqdpgL1429KcE31uF8aY80hnaL+hw=;
        b=MtclP++GBD8WbmuYI/wFNi7RlNcPBAXt1+Mzu9te7bbmuhiVzIaus6AwP83QEYCBSu
         9tHQer0t90+3qntUgmP4Wcz+prYXXJJ9xJ29BRn4YEp+NmqIszNUGUpUn1vWA0ZOJ0rp
         BzytWSK5A+4NFq9GKUYB59MPp+/HaVzGjiUxfpsVx72Lahw9PnuFLqu5n9nakazHsAO3
         4JXybqQuvP6X8ELrke43cO/k6WoxUnRNTFTc9Zg3nBjAn8dA6b/sCEQdcOq68NwPxeGZ
         RdimV8VKv7DyXKtf1nysHwf8cfevuB1DgD1eoitdSgFCYPyo54aprIX/IXwZUSY5QYbW
         SYtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qb+108eLO4hy4TyqdpgL1429KcE31uF8aY80hnaL+hw=;
        b=YncW6wR8L63mkwJIXBij5T39vycco/wz+jGJdBFT+IWbMctGrCLZvmQfXuv6Hf3Luj
         lsGOEwhAaHOJWCEh6vOpnuUoNcapdV5HdqsCyu3u4kpCzjhP6z8refpUYvohdpY67LBZ
         z/qqymShG2V9cVjkL+FZ+HXXoHw4sj7IaNzPFwgQDjFVzZV49wGEaIpdBPh1RT5eVRfK
         uQZ0FERnUXbLPbDafXe9FlTnEVbFjMfQhzDZjF6436Xvmi1I6DmHKcNw6nZbwzDMOA+W
         HPa/3XWSC1xygzewR4a4/jop4rjLSnNKhLdgn6jYdWLsgmKKK6BHds0LW4xokanUioll
         eOeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Qb+108eLO4hy4TyqdpgL1429KcE31uF8aY80hnaL+hw=;
        b=n1TOs14xj8OISge/OAUL/D2/+RY3j26O8sIJv8xi1XLreXVt6yvDT2oKh5cFdtqp3v
         4/xAu6+KxzW+dDp8JZX+dwUgDbCqKydVLazQ6/ZRvlmQ1ystroVL74z12lwHhMB/yke/
         3806Cj2Pz4T0L2W41YB7H8jClyAYAHDeR3JNATLBkPhoX5Sr6jd63mJN//bvzn4W35Ns
         QUCQ/JYJhb6LIBW6T4Qi3FmRBVximwPylHW5LRhl0UHExKfN/5uj/YDRADLG7a0Njg9Z
         5R03CyTekCkZaERvBOERzYOZ8vMqW3NtXsKny2cAOxLPflpMQG58ja6k6/OqD/lReVVn
         QOOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tZW9HgXxpCVMDD7+jPhfiX1NQpwS8sE1UF0IsEFa++zRnuunl
	O3G0JZ9Fds2aQU4bUJO5Llw=
X-Google-Smtp-Source: ABdhPJyop54L8x5XWHIJs+XqY6F944PMfwKC9bRzusJoZOSD30WyKcv2rZUq1z2F/hRRK8jRbWJhbg==
X-Received: by 2002:a17:90a:e513:: with SMTP id t19mr440282pjy.104.1626211644385;
        Tue, 13 Jul 2021 14:27:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a0a:: with SMTP id v10ls7562plp.5.gmail; Tue, 13
 Jul 2021 14:27:23 -0700 (PDT)
X-Received: by 2002:a17:902:b113:b029:128:cec4:e01e with SMTP id q19-20020a170902b113b0290128cec4e01emr4972382plr.78.1626211643793;
        Tue, 13 Jul 2021 14:27:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626211643; cv=none;
        d=google.com; s=arc-20160816;
        b=fr/r5YKyNVUcqGBwL3m05jkNILtvE74uGhN4sCeG32Mx2fVKY7CRJMN3wnibyLKOmM
         kvnePEpJfaMqIc6KlZxR3TTMGofAPEzD7jbd7qe+pU7iOdLD6Tan+C02ljdW5z2lfPLY
         3WrKTwRjkLbPIn2QbCY7+/c4lvYmR7sIBA2O4uBjPdCn3Tkfw3B5ooGNA/1RQvyrYJAe
         X2W/jlpttN2Z7nZTiUykPHbGyIqwC7w/+H22olBdGJ7jZKGVc+aVvZp9199QwpNL+ORm
         iM06+UsS4kBaqD8wUo2gR55sZRHia8Na+9ZSUufQPvxv3pQI2nzsWLi8I7TEVjt/sAFk
         Pa7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=nOcodvzar/MK+qE3peTce5FPCNAaDdyS74eUmkQkdyc=;
        b=SHPbW/M7VtlEvjAalNHviZ/BKK8SLcqPvH6/V+moFXlPWy9pSKzu+3GPNWLXwBJwuK
         ykeh+ojEs6QdRPoYHknlLQpeFFoo/u9hYkp30Ux25NbNGtMTne17iqODtin9n9vGhhaH
         lTH2/BG8C3Y/c+yWs3xhBlBsSugMm/ucEptcFhVa3ehQJsgHAVH9HS99XTODFUzqhnt+
         DB2sMpo0YJTflMBwZtNT781xgiJV7/O4QXjU4jjuevy79RU3c4W+URwvXcwC6TEYNv9Q
         15F7QwYYHBqlYG2EP3vQut2ZP36B4rv5valf/QIQFBdZaKYo5NZV2qlm0+nW6414F03I
         xfEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id t15si15392plr.0.2021.07.13.14.27.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 14:27:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="210222136"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; 
   d="gz'50?scan'50,208,50";a="210222136"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jul 2021 14:27:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; 
   d="gz'50?scan'50,208,50";a="427409862"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 13 Jul 2021 14:27:18 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m3Pvy-000IAl-5j; Tue, 13 Jul 2021 21:27:18 +0000
Date: Wed, 14 Jul 2021 05:26:43 +0800
From: kernel test robot <lkp@intel.com>
To: Baruch Siach <baruch@tkos.co.il>,
	Thierry Reding <thierry.reding@gmail.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Lee Jones <lee.jones@linaro.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Baruch Siach <baruch@tkos.co.il>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Balaji Prakash J <bjagadee@codeaurora.org>,
	Rob Herring <robh+dt@kernel.org>,
	Robert Marko <robert.marko@sartura.hr>,
	Kathiravan T <kathirav@codeaurora.org>
Subject: Re: [PATCH v5 2/4] pwm: driver for qualcomm ipq6018 pwm block
Message-ID: <202107140510.fCd7wROn-lkp@intel.com>
References: <1173e7b0b58730fd187871d9e14a02cab85158cc.1626176145.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5mCyUwZo2JvN/JJP"
Content-Disposition: inline
In-Reply-To: <1173e7b0b58730fd187871d9e14a02cab85158cc.1626176145.git.baruch@tkos.co.il>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--5mCyUwZo2JvN/JJP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Baruch,

I love your patch! Yet something to improve:

[auto build test ERROR on pwm/for-next]
[also build test ERROR on robh/for-next v5.14-rc1 next-20210713]
[cannot apply to agross-msm/qcom/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Baruch-Siach/arm64-dts-ipq6018-correct-TCSR-block-area/20210713-193616
base:   https://git.kernel.org/pub/scm/linux/kernel/git/thierry.reding/linux-pwm.git for-next
config: riscv-randconfig-r032-20210713 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d69635ed9ecf36fd0ca85906bfde17949671cbe)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/3215e41e0c2fbd26202f21458ea6f1993f90e126
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Baruch-Siach/arm64-dts-ipq6018-correct-TCSR-block-area/20210713-193616
        git checkout 3215e41e0c2fbd26202f21458ea6f1993f90e126
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/pwm/pwm-ipq.c:96:8: error: implicit declaration of function 'FIELD_PREP' [-Werror,-Wimplicit-function-declaration]
           val = FIELD_PREP(IPQ_PWM_REG0_HI_DURATION, hi_dur) |
                 ^
>> drivers/pwm/pwm-ipq.c:182:12: error: implicit declaration of function 'FIELD_GET' [-Werror,-Wimplicit-function-declaration]
           pwm_div = FIELD_GET(IPQ_PWM_REG0_PWM_DIV, reg0);
                     ^
   2 errors generated.


vim +/FIELD_PREP +96 drivers/pwm/pwm-ipq.c

    80	
    81	static void config_div_and_duty(struct pwm_device *pwm, unsigned int pre_div,
    82				unsigned int pwm_div, u64 period_ns, u64 duty_ns,
    83				bool enable)
    84	{
    85		unsigned long hi_dur;
    86		unsigned long long quotient;
    87		unsigned long val = 0;
    88	
    89		/*
    90		 * high duration = pwm duty * (pwm div + 1)
    91		 * pwm duty = duty_ns / period_ns
    92		 */
    93		quotient = (pwm_div + 1) * duty_ns;
    94		hi_dur = div64_u64(quotient, period_ns);
    95	
  > 96		val = FIELD_PREP(IPQ_PWM_REG0_HI_DURATION, hi_dur) |
    97			FIELD_PREP(IPQ_PWM_REG0_PWM_DIV, pwm_div);
    98		ipq_pwm_reg_write(pwm, IPQ_PWM_CFG_REG0, val);
    99	
   100		val = FIELD_PREP(IPQ_PWM_REG1_PRE_DIV, pre_div);
   101		ipq_pwm_reg_write(pwm, IPQ_PWM_CFG_REG1, val);
   102	
   103		/* Enable needs a separate write to REG1 */
   104		val |= IPQ_PWM_REG1_UPDATE;
   105		if (enable)
   106			val |= IPQ_PWM_REG1_ENABLE;
   107		else
   108			val &= ~IPQ_PWM_REG1_ENABLE;
   109		ipq_pwm_reg_write(pwm, IPQ_PWM_CFG_REG1, val);
   110	}
   111	
   112	static int ipq_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
   113				 const struct pwm_state *state)
   114	{
   115		struct ipq_pwm_chip *ipq_chip = to_ipq_pwm_chip(chip);
   116		unsigned long freq;
   117		unsigned int pre_div, pwm_div, close_pre_div, close_pwm_div;
   118		long long diff;
   119		unsigned long rate = clk_get_rate(ipq_chip->clk);
   120		unsigned long min_diff = rate;
   121		uint64_t fin_ps;
   122		u64 period_ns, duty_ns;
   123	
   124		if (state->period < IPQ_PWM_MIN_PERIOD_NS)
   125			return -ERANGE;
   126	
   127		period_ns = min(state->period, IPQ_PWM_MAX_PERIOD_NS);
   128		duty_ns = min(state->duty_cycle, period_ns);
   129	
   130		/* freq in Hz for period in nano second */
   131		freq = div64_u64(NSEC_PER_SEC, period_ns);
   132		fin_ps = div64_u64(NSEC_PER_SEC * 1000ULL, rate);
   133		close_pre_div = IPQ_PWM_MAX_DIV;
   134		close_pwm_div = IPQ_PWM_MAX_DIV;
   135	
   136		for (pre_div = 0; pre_div <= IPQ_PWM_MAX_DIV; pre_div++) {
   137			pwm_div = DIV64_U64_ROUND_CLOSEST(period_ns * 1000,
   138							  fin_ps * (pre_div + 1));
   139			pwm_div--;
   140			if (pwm_div > IPQ_PWM_MAX_DIV)
   141				continue;
   142	
   143			diff = ((uint64_t)freq * (pre_div + 1) * (pwm_div + 1))
   144				- (uint64_t)rate;
   145	
   146			if (diff < 0) /* period larger than requested */
   147				continue;
   148			if (diff == 0) { /* bingo */
   149				close_pre_div = pre_div;
   150				close_pwm_div = pwm_div;
   151				break;
   152			}
   153			if (diff < min_diff) {
   154				min_diff = diff;
   155				close_pre_div = pre_div;
   156				close_pwm_div = pwm_div;
   157			}
   158		}
   159	
   160		/* config divider values for the closest possible frequency */
   161		config_div_and_duty(pwm, close_pre_div, close_pwm_div,
   162				    period_ns, duty_ns, state->enabled);
   163	
   164		return 0;
   165	}
   166	
   167	static void ipq_pwm_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
   168				      struct pwm_state *state)
   169	{
   170		struct ipq_pwm_chip *ipq_chip = to_ipq_pwm_chip(chip);
   171		unsigned long rate = clk_get_rate(ipq_chip->clk);
   172		unsigned int pre_div, pwm_div, hi_dur;
   173		u64 effective_div, hi_div;
   174		u32 reg0, reg1;
   175	
   176		reg0 = ipq_pwm_reg_read(pwm, IPQ_PWM_CFG_REG0);
   177		reg1 = ipq_pwm_reg_read(pwm, IPQ_PWM_CFG_REG1);
   178	
   179		state->polarity = PWM_POLARITY_NORMAL;
   180		state->enabled = reg1 & IPQ_PWM_REG1_ENABLE;
   181	
 > 182		pwm_div = FIELD_GET(IPQ_PWM_REG0_PWM_DIV, reg0);
   183		hi_dur = FIELD_GET(IPQ_PWM_REG0_HI_DURATION, reg0);
   184		pre_div = FIELD_GET(IPQ_PWM_REG1_PRE_DIV, reg1);
   185	
   186		effective_div = (pre_div + 1) * (pwm_div + 1);
   187		state->period = div64_u64(effective_div * NSEC_PER_SEC, rate);
   188	
   189		hi_div = hi_dur * (pre_div + 1);
   190		state->duty_cycle = div64_u64(hi_div * NSEC_PER_SEC, rate);
   191	}
   192	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107140510.fCd7wROn-lkp%40intel.com.

--5mCyUwZo2JvN/JJP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
PoiluLxJ5PE3Wql+j/s/uvqtSx/QAQA=

--5mCyUwZo2JvN/JJP--
