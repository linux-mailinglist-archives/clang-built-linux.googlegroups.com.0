Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBAFM635AKGQE46YZZ2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 21722267D80
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 05:46:10 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id c8sf10127306ila.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Sep 2020 20:46:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599968769; cv=pass;
        d=google.com; s=arc-20160816;
        b=yRDsgesdvnBAWV9zvVDi7qgtVjtdvXTsg772U+HksbbtPVRtg7TlNPf1qMWsCtFD4S
         BH5g9JSx3dAi772P0D+aIfR5btSYZhiqcSZ+KCBx5aw5DBOHcQSpT3DqLKHua+PBObkb
         vx8H6TONix9EpFXmEGHAnEYHQOd73OzQEAC0sYIGn3npXN4HqGeitImYTcJUUK9gb7AH
         TjpCzJBZb0fX44IXLwfMZG0DVUEPSpz/ve9U7C6JXOJOzAXXW2h6JqIie9OvtZ3ft20E
         ccOOFC48hN84Gd8Sow4STYPwSsJsEpR8qbPVOECS/TZA3OM9wBBKNLDXbUr1YYtkyRjJ
         8Cmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=4/1RVz3A6H/6JBEHEFtkre3vSe+tEQ65csnWaU9K6ew=;
        b=Fxyb9bnO/ZSlByBf7DGpMXmpVYGLoWVLdwWddIzFFZKJH5oLULMguZIHq16MH5Q1Lu
         w+Ff8UnhHcGNY8fR4mmSs3XFrq8bcMZG1zAdGnnZJSr3e5q4+yJVyid5dcckcpQf/+IV
         1NGBFBtiANHHIm16nfNVsqzVs8AK9pOV0MJXkxqKo8eMnVmZYKH71yfv9irZ/IxjeWh0
         mLAAXjL/t1XRFjfS5ZHXEi1ufSYPhClu1/OiEcGV8SXPhRptMZegIkhB9GjodBHgi9gv
         jFmxf9WwObcGr+dI5La9sUzR2CAFqENs+gYtPepd/8bJLCwnyekx5ep85XLcKOw7RyZj
         kHCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/1RVz3A6H/6JBEHEFtkre3vSe+tEQ65csnWaU9K6ew=;
        b=WrZ7okmDoqJGxPA17KVxYYADzj5iQdhBnZdtNp6ypK5W3a8xwa8aFsQsgQpNJ/S65F
         D7/KKWaQq1sS00T71uISzMK/a2itlYvd7Qrpss4l/IOYgIqxqMm1Sq5c0hEkklYtJVfX
         wk1pKacdEsXEqGNL4+ceyEappImPVUUlFygeCkR9V9I5oZ+8s/DKNRiQCJ5t1bQx3BZr
         t0StSr38PcqAxJSToafY36WpE/RkhPNFvotQCHbEYmzEoLhWCJphuE9CJ1+keiTsQBYE
         ZNCMWjxJpmsEC7W2uje0tl6b7l3hZNOXPXU3PKPJXIrfQMSCT925+nfrq50xj00Pjska
         tGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/1RVz3A6H/6JBEHEFtkre3vSe+tEQ65csnWaU9K6ew=;
        b=nqNHZNaARIsu35J868BuINyj9o5YWey7gi3gurnzwBrH/uD3TY8t1Y82jlFcH6VInz
         YlQ6JXMEnAie8/eGGjS27EIk0aUiNeU/T8HkIHB7LXOrAe9t19bwXK7sP/uEHtZP5uFW
         vTLW5wQmJ4JiM+N5qe03Th2Vf+Hm4smUnwTdES6URbcZyIpoPlt/YqumfSdSRUPUlLm+
         UyvsZ/DKa95laJh5y+6qV4sScRiZv+Q/PcDv1uRf4FAPjwHuO+7nupDcrAwsCV8q/tTF
         2acY4270AH6tk13zDPDKwDbUV9uqP3+NbTo/jmehhxcAXg9psHFpf62FoUm6FcVKCxdu
         Cv7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Qa9lTgoiW8Ia4sfmwptSBHKO41uSZtSX3ltvobwuzaZ+DKOJG
	1sDWsF8FmXEMCnis064S4KM=
X-Google-Smtp-Source: ABdhPJxvZMbeNnx4T/icNlo7S8RKrpU7Quu39vA86TCVU56aadMcG+pufyCxpruqKhtqoYZUSGyQ+w==
X-Received: by 2002:a92:d6c3:: with SMTP id z3mr7883756ilp.197.1599968768704;
        Sat, 12 Sep 2020 20:46:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c64b:: with SMTP id k11ls867486jan.1.gmail; Sat, 12 Sep
 2020 20:46:08 -0700 (PDT)
X-Received: by 2002:a02:a047:: with SMTP id f7mr7952142jah.31.1599968768248;
        Sat, 12 Sep 2020 20:46:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599968768; cv=none;
        d=google.com; s=arc-20160816;
        b=0jf8u0FUQwsnj4Dn3/mYa5k7C/0dAp6rREoIal20AzJoTYEclMfQdDZtNBZh3hGLw9
         75E3+Vf6nOZcgkB3iy55euW2kuEZjO27K5t1GE51JZxgXJ/uxWTB3RoS1pMkW0NMOaFo
         A2PdNh4P1kQvn26B0oaAvaInCdkAUeywmpSwH8OpNhavTQpBgAbcT4+W8dCDLVMnkzu1
         2lB6rO58iwbStJUifJblDX4oTpsJjLhF7C9TrZW2jCterCvq41cNTm4EY5W168AeieMN
         KKgko3CHkJL2b3lhQvcndI/6GgcvVgGsxFTvhBjvcrieGXDQo4fL7BW3YCPY92UKp7Co
         8FGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=DBhdb3+VV7ElfLxXQmDO9eXCguiXiiTPsW24oNS7jWs=;
        b=Ubzp/7wfq9tXYmkq0wfE+XTf1F3+Ho+cL/i7/j+zazmHETjKBAQAMDAG42Q+Hm+Gnx
         kIO4+VR6rOm1iZFaaClkDQ9Cpd8WTaRg14X3E4ftz0x2etbdtCvTw+vow1RNIoraWC/5
         HfSQSs7KBJo2InqAZT2ONUEHdRcPwyXpEnQKLUnQAl9GwwNbo5qZ1fqAqa6QjLRRiqMv
         NEw5l0G+W4JGYi93qep7GPAN2UBgOAbLp+5ZQibnSWp444/3IDSklzkRf7/sn3UfImDy
         Et4JBXCZjO6yFQNLKdGrEjvh5txrM+lqix2njakdcJwcCG3DUQweesqbr1TcJRobFGOv
         P8Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id q22si347714iob.1.2020.09.12.20.46.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Sep 2020 20:46:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: DCOG/QoveAOlyjP3DqO6ao7vK4l+q9/zKAGzuWd+T1a2/bvAmaA5EMb5SN2V1KKb59IgdAeh8A
 XinWfTdd0hHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9742"; a="177015823"
X-IronPort-AV: E=Sophos;i="5.76,421,1592895600"; 
   d="gz'50?scan'50,208,50";a="177015823"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Sep 2020 20:46:06 -0700
IronPort-SDR: faQd2N2Nnz44g7W/inE7AmKuuUkPsPmjMNuXPH3h735s8j4FB7IvAfw4WZCmby0dLhz5GoSwxd
 Ow1i93SrEWbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,421,1592895600"; 
   d="gz'50?scan'50,208,50";a="337904081"
Received: from lkp-server01.sh.intel.com (HELO a75722977aa5) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 12 Sep 2020 20:46:03 -0700
Received: from kbuild by a75722977aa5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kHIxm-0000kr-O3; Sun, 13 Sep 2020 03:46:02 +0000
Date: Sun, 13 Sep 2020 11:45:24 +0800
From: kernel test robot <lkp@intel.com>
To: Douglas Anderson <dianders@chromium.org>,
	Mark Brown <broonie@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Akash Asthana <akashast@codeaurora.org>, swboyd@chromium.org,
	Douglas Anderson <dianders@chromium.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org
Subject: Re: [PATCH 3/3] spi: spi-geni-qcom: Slightly optimize setup of
 bidirectional xfters
Message-ID: <202009131130.PJTfhHHo%lkp@intel.com>
References: <20200912140730.3.Ided778fb4cd078e36c6b240d1b279cd7a534a313@changeid>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline
In-Reply-To: <20200912140730.3.Ided778fb4cd078e36c6b240d1b279cd7a534a313@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Douglas,

I love your patch! Yet something to improve:

[auto build test ERROR on spi/for-next]
[also build test ERROR on v5.9-rc4 next-20200911]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Douglas-Anderson/spi-spi-geni-qcom-Use-the-FIFO-even-more/20200913-050928
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next
config: x86_64-randconfig-a002-20200913 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 3170d54842655d6d936aae32b7d0bc92fce7f22e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/spi/spi-geni-qcom.c:385:2: error: implicit declaration of function '__iowmb' [-Werror,-Wimplicit-function-declaration]
           __iowmb();
           ^
   1 error generated.

# https://github.com/0day-ci/linux/commit/4458adf4007926cfaaa505b54a83059c9ba813ad
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Douglas-Anderson/spi-spi-geni-qcom-Use-the-FIFO-even-more/20200913-050928
git checkout 4458adf4007926cfaaa505b54a83059c9ba813ad
vim +/__iowmb +385 drivers/spi/spi-geni-qcom.c

   334	
   335	static void setup_fifo_xfer(struct spi_transfer *xfer,
   336					struct spi_geni_master *mas,
   337					u16 mode, struct spi_master *spi)
   338	{
   339		u32 m_cmd = 0;
   340		u32 len;
   341		struct geni_se *se = &mas->se;
   342		int ret;
   343	
   344		/*
   345		 * Ensure that our interrupt handler isn't still running from some
   346		 * prior command before we start messing with the hardware behind
   347		 * its back.  We don't need to _keep_ the lock here since we're only
   348		 * worried about racing with out interrupt handler.  The SPI core
   349		 * already handles making sure that we're not trying to do two
   350		 * transfers at once or setting a chip select and doing a transfer
   351		 * concurrently.
   352		 *
   353		 * NOTE: we actually _can't_ hold the lock here because possibly we
   354		 * might call clk_set_rate() which needs to be able to sleep.
   355		 */
   356		spin_lock_irq(&mas->lock);
   357		spin_unlock_irq(&mas->lock);
   358	
   359		if (xfer->bits_per_word != mas->cur_bits_per_word) {
   360			spi_setup_word_len(mas, mode, xfer->bits_per_word);
   361			mas->cur_bits_per_word = xfer->bits_per_word;
   362		}
   363	
   364		/* Speed and bits per word can be overridden per transfer */
   365		ret = geni_spi_set_clock_and_bw(mas, xfer->speed_hz);
   366		if (ret)
   367			return;
   368	
   369		mas->tx_rem_bytes = 0;
   370		mas->rx_rem_bytes = 0;
   371	
   372		if (!(mas->cur_bits_per_word % MIN_WORD_LEN))
   373			len = xfer->len * BITS_PER_BYTE / mas->cur_bits_per_word;
   374		else
   375			len = xfer->len / (mas->cur_bits_per_word / BITS_PER_BYTE + 1);
   376		len &= TRANS_LEN_MSK;
   377	
   378		mas->cur_xfer = xfer;
   379	
   380		/*
   381		 * Factor out the __iowmb() so that we can use writel_relaxed() for
   382		 * both writes below and thus only incur the overhead once even if
   383		 * we execute both of them.
   384		 */
 > 385		__iowmb();
   386	
   387		if (xfer->tx_buf) {
   388			m_cmd |= SPI_TX_ONLY;
   389			mas->tx_rem_bytes = xfer->len;
   390			writel_relaxed(len, se->base + SE_SPI_TX_TRANS_LEN);
   391		}
   392		if (xfer->rx_buf) {
   393			m_cmd |= SPI_RX_ONLY;
   394			writel_relaxed(len, se->base + SE_SPI_RX_TRANS_LEN);
   395			mas->rx_rem_bytes = xfer->len;
   396		}
   397	
   398		/*
   399		 * Lock around right before we start the transfer since our
   400		 * interrupt could come in at any time now.
   401		 */
   402		spin_lock_irq(&mas->lock);
   403		geni_se_setup_m_cmd(se, m_cmd, FRAGMENTATION);
   404	
   405		/*
   406		 * TX_WATERMARK_REG should be set after SPI configuration and
   407		 * setting up GENI SE engine, as driver starts data transfer
   408		 * for the watermark interrupt.
   409		 */
   410		if (m_cmd & SPI_TX_ONLY)
   411			writel(mas->tx_wm, se->base + SE_GENI_TX_WATERMARK_REG);
   412		spin_unlock_irq(&mas->lock);
   413	}
   414	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009131130.PJTfhHHo%25lkp%40intel.com.

--Q68bSM7Ycu6FN28Q
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
eGsCAA==

--Q68bSM7Ycu6FN28Q--
