Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEWTYODAMGQEY6JFREI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6620D3AF631
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 21:33:40 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id k14-20020a63d84e0000b029022216b0ebf2sf6043676pgj.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 12:33:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624304018; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gcr5xkwR11XBzyIg4aWFxBEnah8EzqYJTlJgtRCqDF7EExjX0pazWZjrUG2lTzvWCN
         0fNz/bHRYYktNucRR72Fk+njXmbDFmMSFZyo9qtWqm2AjRNPOMAv9wTxG2B4Onbyc5FT
         j/+F1evffQqmu7+86tvUl2OeX11u5SgtfOKbQijX7mo6j2cfppOx/uV7xT0X831H9q14
         X2L6Xd6Y0m733LMTnTB/LMI5xGIn5xikG6vmULZh1B0mwgtnWcVaoWs5L18+jYhtXQUO
         qQwNCuxhRW01ysPs6JxpcdaF3p6LhzunUe9qfaP9bOFSKKkvtRDcZcPItueIuUvRJZ6X
         eOHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=2OK0mGPyhQ1CWJTedE2PK+PuKtW3bOO+0aDlLrD9oqw=;
        b=NJU8j5J2bWxlBlhVRa4jMvphh0F6Q//ykMSwG3UA9u9BvSFFeLlGkR3qho+8N54WQK
         dhC/0YMjlk8YTeje6DKHQvX2wnISLW5RG2TnmfoagUIMrd1ZKRwrD2H1RrvUTikqFUwa
         Ekn2UEhpyXGQ/AY8jYr30GgJtXjbE3wylj/SIgI0jTj+A7bm1Tm2JIZ9PFWhJyxw8pQR
         qra0cpxax6QObBcRuQEr3XYb/+qrH4cy36LUmnaN9Mzk8cFyxYFqNe5H7C4vnPUkgpdM
         gobUG5AdnKQdqwhXoZd8hmmvMx2jQYk8LN3QDOMqntqiYYFPZ/WfWoWPqJXiHkxSPD/M
         nk9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2OK0mGPyhQ1CWJTedE2PK+PuKtW3bOO+0aDlLrD9oqw=;
        b=U+FqbQeK1qpjXPcmkpz/mBlNcDBAOF9R/sFDEeiLdh6Ir0XfcFi9lk8/QhcxE2GFm4
         vEbsgSczrcQxmsJXKjefKhkE7qnwc94Rbrz9QipgAbV8YyzA+WbsSK87ELlLpSGPywHJ
         wFgNnwZmpAQCxMHMF0CbB/bqj3Y2bKn/1G4g7UZtZDL5r65A962fF95fIjHtjsu1h+7j
         ipFf9cArpb7sq+/EewigNdDaqKj3+05axaM6/5uCCKRIXxtnPRzznq+e9oa9F+QxocN9
         KeYSI1sI/xDWPcY3sO9qhCkGpOWsil7k7Xn69u2dE6vM4dWe/Kf1RLf+5DTfrV5bvfJ5
         JHbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2OK0mGPyhQ1CWJTedE2PK+PuKtW3bOO+0aDlLrD9oqw=;
        b=mXvakXRgHIp8jtcXjRNEIpvofsi7macMcrgAAKaQuhkgBEpHqKd/eI9ACHYqfO+Vcv
         XywKXKZI1l/D1oQLq/Cy9iFt+BiAPMpYk4Eji+OREcpl6N8FgC9JawfyFLDnsEzJGnUo
         yGa1RV53Qaxrqg1NNIR6R7+qx3oJ9bTe1vtd/QMsSf3MwD0C7g3lAeI3X5ISsp5aAgqi
         DL0bSzQy4lUr0M7IsghR1zmfrtBNqDxUDjiyZMoQwkF84I5GLZc5lTyxSosT8CrBEAfP
         isonBiGuUDyxUaMlrsQRW4o/fVOSChNgH5Cb7Pi6LVrDfq2NUPAZhX3C/BzIVwBLrGO7
         og3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bHj/NCRWu0WEsopA7euriZ3ebn2dS/5lKQhqqV37i8ypkKr1s
	XMiR4TuNZHLQg1edYHmSOk0=
X-Google-Smtp-Source: ABdhPJytEqaUmsxCPVeJ9Tp+6XBdE0rI8jtu6XXXi0CQ0dAgy2gW1mbgdsjVttM0vAH0BF7d4ITcFw==
X-Received: by 2002:a17:902:c1cc:b029:122:52b4:3855 with SMTP id c12-20020a170902c1ccb029012252b43855mr14721815plc.10.1624304018354;
        Mon, 21 Jun 2021 12:33:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e23:: with SMTP id d35ls7286150pgl.5.gmail; Mon, 21 Jun
 2021 12:33:37 -0700 (PDT)
X-Received: by 2002:a05:6a00:174c:b029:2f0:60c7:62ca with SMTP id j12-20020a056a00174cb02902f060c762camr21209218pfc.81.1624304017649;
        Mon, 21 Jun 2021 12:33:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624304017; cv=none;
        d=google.com; s=arc-20160816;
        b=E0kBuU6l24GSBOn1vJlud+9gfQpZhMVKT6TSUzJdOuCCyhzU/oOboTCMYrQ7WjFqvf
         3gDCdNsJxz42IayPUfqnVvpiGeL2CRBjEOV368yEPtCLhtopbdwz9r4I+T5y6Z1opYYP
         aFb7p0zTnJsI+O+gTK+1px/CHqcI6aHMXv+2uC1HV6Ux7COPYL6nAK96kpE+GuD2SxIC
         FpNs4RTZ32WsIbnOS1to/vvXYl1YstYzNza09dVO+0bp9mVMHU+0qKwkScQdVeps4jSE
         SJwjDu7bi9YPEu6Azvk2IvF3tEZxkOBkbOkBjk+kyzysZrWuAGcC3YK7mJRNq10fiSJH
         vXGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=WTHIOIzEn08yCGnkto4tCKDeCVEFwBEfdQpZpke15SU=;
        b=aA87V8lURd6Q2SR27ZymbL4fqFD45TbCvGnqh3K4oQMBRw7EBnQNh4eIhJ1BB1mplk
         oPH4QGUeciYC8gRAk3OWu+0Q/d2S5cRdjV7pQyhr68NSrfJZv33Wn063PrD30jlTaU9z
         jimv0Pc43EFO6eHG2khtFwP/ML+Iur3zDs90JxPhAVsTQNV9FD97VIBrsqqvu1UYNJrR
         bz9Yc4TooNCZhrvc0iUBq1nJP2DlDswWOmG167lU34tysYOIXVtwmcC65BuiQJsw7+ES
         hujuJSSHv0UTOsPugLqIdbyU8BMyWEs6gaGW9xYIqwZiq6GzURfdkLwPJiRTu1QQwZoV
         G3Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id d123si5166pfa.2.2021.06.21.12.33.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 12:33:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: 4l6s+dBr0y0mLY/AErG4y9hMwwnr1/NF2wGhYrFoo48vR3VMJ0/q642BRY/gZTfY99gdUSn4/6
 8BFqxwNsQZmA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="194056178"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="gz'50?scan'50,208,50";a="194056178"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2021 12:33:36 -0700
IronPort-SDR: xT4bZ/vMbITMPwo2J3muccaS8y8Kf9uq29ukLZkrWhERGzsRBEItlTP9dLU8ip5hUKZy77wb31
 VOylGt2ePrwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="gz'50?scan'50,208,50";a="405726693"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 21 Jun 2021 12:33:32 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lvPfo-0004kk-4e; Mon, 21 Jun 2021 19:33:32 +0000
Date: Tue, 22 Jun 2021 03:33:22 +0800
From: kernel test robot <lkp@intel.com>
To: Martin =?iso-8859-1?Q?Hundeb=F8ll?= <mhu@silicom.dk>,
	Wu Hao <hao.wu@intel.com>, Tom Rix <trix@redhat.com>,
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Lee Jones <lee.jones@linaro.org>, Mark Brown <broonie@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Martin =?iso-8859-1?Q?Hundeb=F8ll?= <mhu@geanix.com>,
	linux-fpga@vger.kernel.org
Subject: Re: [PATCH 2/4] fpga: dfl: Move DFH header register macros to
 linux/dfl.h
Message-ID: <202106220313.PQF1lSCC-lkp@intel.com>
References: <20210621070621.431482-3-mhu@silicom.dk>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k1lZvvs/B4yU6o8G"
Content-Disposition: inline
In-Reply-To: <20210621070621.431482-3-mhu@silicom.dk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi "Martin,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on hwmon/hwmon-next]
[also build test ERROR on spi/for-next lee-mfd/for-mfd-next linus/master v5.13-rc7 next-20210621]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Martin-Hundeb-ll/fpga-mfd-hwmon-Initial-support-for-Silicom-N5010-PAC/20210621-150923
base:   https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git hwmon-next
config: mips-randconfig-r005-20210621 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e1adf90826a57b674eee79b071fb46c1f5683cd0)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://github.com/0day-ci/linux/commit/3cd517ceee3e0bb24e44dd409f3ba2652c2ed297
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Martin-Hundeb-ll/fpga-mfd-hwmon-Initial-support-for-Silicom-N5010-PAC/20210621-150923
        git checkout 3cd517ceee3e0bb24e44dd409f3ba2652c2ed297
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/fpga/dfl.c:13:
>> include/linux/dfl.h:117:10: error: implicit declaration of function 'readq' [-Werror,-Wimplicit-function-declaration]
           u64 v = readq(base + DFH);
                   ^
   include/linux/dfl.h:126:10: error: implicit declaration of function 'readq' [-Werror,-Wimplicit-function-declaration]
           u64 v = readq(base + DFH);
                   ^
   include/linux/dfl.h:135:37: error: implicit declaration of function 'readq' [-Werror,-Wimplicit-function-declaration]
           return (u8)FIELD_GET(DFH_REVISION, readq(base + DFH));
                                              ^
   include/linux/dfl.h:135:37: error: implicit declaration of function 'readq' [-Werror,-Wimplicit-function-declaration]
   4 errors generated.


vim +/readq +117 include/linux/dfl.h

   113	
   114	/* Function to read from DFH and check if the Feature type is FME */
   115	static inline bool dfl_feature_is_fme(void __iomem *base)
   116	{
 > 117		u64 v = readq(base + DFH);
   118	
   119		return (FIELD_GET(DFH_TYPE, v) == DFH_TYPE_FIU) &&
   120			(FIELD_GET(DFH_ID, v) == DFH_ID_FIU_FME);
   121	}
   122	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106220313.PQF1lSCC-lkp%40intel.com.

--k1lZvvs/B4yU6o8G
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICOzc0GAAAy5jb25maWcAlDzbcuO4ju/nK1Q9L3Oqpqdt575beaAlymJbEjUk7Th5YbkT
p8d7EidrO3P5+wWoGylR7tmpOt1tAARBEsSN0PnpXz8F5OP49ro+bh/XLy9/B983u81+fdw8
Bc/bl81/BxEPcq4CGjH1KxCn293HX19et++H4OLX8dmvo8/7x8tgvtnvNi9B+LZ73n7/gOHb
t92/fvpXyPOYzXQY6iUVkvFcK7pSt58eX9a778Efm/0B6ALk8uso+Pn79vhfX77An6/b/f5t
/+Xl5Y9X/b5/+5/N4zHYjNdPzzej68nl+uLq2+XV+Wazubr5NroaP387v3wcP19cXp89Po3+
/ameddZOezuyRGFShynJZ7d/N0D82dCOz0bwX40jEgfM8kVLDqCadnJ23pKmUX8+gMHwNI3a
4alF584FwiXAnMhMz7jiloAuQvOFKhbKi2d5ynLaopj4Td9xMW8h0wVLI8UyqhWZplRLLpAV
HNdPwcwc/ktw2Bw/3tsDZDlTmuZLTQTIzzKmbs8mQF5Pz7OCASdFpQq2h2D3dkQOzYJ5SNJ6
xZ8++cCaLOz1GhG1JKmy6BOypHpORU5TPXtgRUtuY6aAmfhR6UNG/JjVw9AIPoQ49yMepMKj
brbGktfemS7eSO3ZOlfy7qjVwymeIPxp9PkpNC7EI1BEY7JIldEI62xqcMKlyklGbz/9vHvb
bdrLKO/lkhVhu2kVAP8OVWov7o6oMNG/LeiCegUMBZdSZzTj4l4TpUiYeARdSJqyaa3XcAuC
w8e3w9+H4+a11esZzalgobkkheBT697YKJnwOz+GxjENFYPzJ3GsMyLnfjqWf0U60H8vOkxs
dUZIxDPCch9MJ4wKIsLkfmCqgtmqmUdwMauRgHY5xlyENNIqEZREzDaJNseIThezWJoz2uye
grfnzn62dpSHc8kXwLQ8xYh7WBrTs8RzJ2naRxsmdElzJT3IjEu9KCKiaH20avsKfsR3uoqF
c81zCsdn2crkQRfAi0cstLUu54hhsFtepTNoj5olbJZoQaVZlXD2qCeYYy/CaRHrr6yxvPDT
WUMzM9JVm+VKVk3jDqznKASlWaFAbuMMGm41fMnTRa6IuPeutqLyrLceH3IYXsseFosvan34
T3CEJQdrkOtwXB8Pwfrx8e1jd9zuvncOBQZoEhoepdY1M6O+GQVp0R4ppjLC+xpSMARAaJ1u
F6OXZ87yJfNu4j9YQaPkIDuTPCXVdTY7IMJFID0aCLulAdfKBz80XYECWjJLh8KM6YDArkgz
tLoHHlQPtIioD64ECT0ySQX6hY48s20UYnIKFkLSWThNmVQuLiY5hCIYC/SAOqUkvrWCBMOL
h1PcQM+RdqTTaJF0NrUvlLvJjR2bl/9wtGjeqCsPPZOxeQLs8b6+di2MDBNYrzFC9eHKx983
Tx8vm33wvFkfP/abgwFXUnmwjarMBF8UlhkryIyWV4eKFgquLJx1fuo5/GUFeIZTKVwLjQkT
2sW0XjKWegrW/45FKvFecqHssZ5dqiYtWCQdziVYRBkZHhSDFj/Yi4RTl1RJ1xbxELlXOL+z
L9lFdMlCOjwdcKjsQHdkxqRPAxq+4NocNwDBiyxACaVvUELDecFZrtDkKy6seKHUGwxjDWeb
J1hvOIyIgu0MwXH5tlrQlFj+fJrOcckmyhLWgZvfJANupZe1IjARdYJiANSxcHvkkQkl/eoQ
deJJewx3+DrRL/yugt5aeM7RP3TvJOQovADTzh4oxh3ohOGvjOT+c+1QS/hHJ+KGDCFCIxFy
sHQQERBNMTXJa8PczHyS0JevRJqLAkInCGKEZQ2bUNX5DeY8pIUyyS1arxbftfMZRMgMNF04
yjGjCuNGv493NMhDURuCMs6zDA2XbGXHJM2VA+Wde+eAi+CHEwlHsBiQLF5ARu/F0IJ7ZZVs
lpM0thTGiGkDTPRnA2TiWEPCuGPtuV4If6BAoiUD8audc7YCOE6JEBBM+/IupL7PnAE1TPvP
oEGbDcMLjXlBKzQevEmS7IXNw8wxFULS3/y7mU1pFHlth7kMeJt0N2o2QJhXLzMQjjvxbhGO
R04CaHxaVccpNvvnt/3reve4Cegfmx1EQgS8XYixEMS0dnhqTeyNrP4hx5bhMivZ1X5S+m9E
upiW1ttnPHhWEKWnpuphDSFTnz4CJ5eMTwemJFPQGgEuvEp3vdyACJ0fBktawLXkWVeIFp8Q
EUHcEfnnSxZxDMmbCRrM+RFwOQMrMGFpQYRixLVQimalzVtCeBOzsGcdwQvHLO1cn+b43IJQ
Y8mYiWqMHmTrx9+3uw1QvGweq7pfe8mAsAmtysqCd62GjqTgQzN/RkLElR+uksnFEObqxm/R
bKn8FGF2frXy2zXAXZ4N4AzjkE9J6o9mMhImoDwhRNtd3+PSfCUP/tqOwcJh0RxjVe4XPyWQ
OPntiBmfcp7PJM/PJj+mmdD4x0SX5x61NBQFqDn87Rpss01gkpQ/EqkGhqfEW4rz8dAhID4H
P0fh8l36i1yCgMb7/aAZDtlHqugcYuQBhzxjGmIrv4AV0q+wFfL6BPJsdAo5MCeb3ivILUTC
cn8Fo6YgIhu4hC0PfprHDwkkBE7ZKYKUKZVSuRAnuYAX4NKvIxXJlM0GmeRMDwhhjlitzm5O
aZBanQ/i2VxwxUA9phcD5xGSJVtkmoeKQmA4dFHzNNOrVEDIDI7gBEVxgqK5YXpWmEgKkte5
FJ0JK3PeN9bd/De5o2yWWFFrU3qDKzMVkL+AAXOSlTLz4RlT4NggfdImQ7JzP5MRCGLVUEO6
BMi5VS0NQWQXUhpTTMQ91UIsgGq5KAouFFYEsXhrRT6Qm2LpK+QJFTRXjkc0TyWUiPS+Codt
bN4RAumbaSCoQyeMryZOYlupswaDw0g+MHiAxqxSFrBxnf2iaXw26dClYzgG2G6IDVisbi+a
8pvjfS3BcNTZRIvJgFAPOFV/d7pD7TqZR3dacndbEGZPrQgET0ozSWArl7cTr0hnkyloUhkr
uOx+QILBFNidqvRslLAJUqoo9Pj3+6bdIMOmU5zBPFOfz52IsEWML+f+2LAluTyf+6JMU2kH
w7LSD2A7OYR94nY8bg8cZIeLhGfbvQC48A4CYXhMhaAxhbW6mPrCRous0CqddhjGRb2R7jBQ
e8At+sBS4/qMMqVlVvSATrRrTIPMvJGyfegN4YCemtTZfqboxBJgegoSD0Qq5Tb6CjolKutt
eejuApZAJT4ByAwibEPDBdCGgleRcOdgIkZZHyrYivkuiCl6L4dRPl5oqTpiE8miyjCM+ghQ
dXl77b1O+IbhVhttbCatR1NjdmNIbYEeTJlrCb3msQKa8kj53IyVnNFfo9H5yH77LlMlvEGY
P1vjHbi5QTyOJVXIYzxyeDjqCD/0ohjSp0onBtAOo1yYAmVrrsxgk/dKsDn4fhY2yWrnTMqx
+FdGCrsanjzoiT80Bcy5PzoEDCzYVwEAxOTavhXI/sIfRhrU5YkJBoeNRxNfnO/sHBFomhP7
Pf3hFoRzg4VE4DOQU1yhK+qt0woiE2PKLEOd3EtIZFN8tBCoB8/Vf9fnlT64d5+DG4uLy/Na
Sv9rMahVz67AlSdFAS4bZI6Uz64bMnDVDl2PD8Q+g4w6diqLsH8DIime/TNKINJ0hcnOP+SK
Lj/l+PwxbBFLcmzDUCyv2NtxgO1Pm7IpRGoR9XgXjE/n5ctOD1fMSquQ0iVN8Y6Vj6Efh+Dt
HWOMQ/BzEbJfgiLMQkZ+CSgED78E5g8V/rv15UCkI8GwnQR4zUhoBahZtuhYsAxuoxZ5aRVh
zXlrGX14srodX/gJ6lLTD/g4ZCW79gH3ny62CaMEiaoyahPgFG9/bvbB63q3/r553eyONUdr
hywDX2TNy0cLIdESi/FRFxUBrv+ab0NNBRcfAseTkcUQ8pCW/u43yAvuIDuhccxChgW+qorm
+p0is/VscFlN4FtSZA0FIBoce3rZuPEwi7qhO0L0jC91SqLILc076IzmvmdLhwZyvaYqBveo
kSGI9ts/6rppnYn5CexAuxTfhvQWazjG2/3rn+u9PU0ddTKRmZAY3DU6oDap43wGQtd4e9UV
KuSCmjzE3M9eoVhtvu/XwXM985OZ2V7fAEGN7snsVLPnS6doumRCLSD9fBh6sSmTI7hmJNdY
2NHLSDZHUZcw13vIfY+QunzsN5+fNu8gifeizJtkshHgK4bSKZlSX+Hf3HR0ILW5nMo7e6/n
gqpufmpWyWCL0UAAUnVQc++AQU55xjoQI5SxuQnn8w4Ss2P4rdhswReeLhsMnYxSlxF3x3hi
+AnpjGLxff0M2SfAKSBI04vcpA9dHmUGB4Gc7q4cexgzHlV9gd2FCjqDGAMMqvEp2OFhGj2K
7vLxHaUDMgEbjvfB8XGm4unGGu1mtjrQWcsdAVuGrWwFEfjWUjU6elhIGqIjOIGCG5k6pRP/
ECMpqg0NFbepu/A2E3Mw8FNw74NZqnjdM2RPiNoCUYDRqLnTKGbQoAswKul2UXqaeToUcNLV
+gsa4vOE5bV5tEipNDcLAyzh5voVe7pCPcrLNj1co0cXzeg6jfBtvuPuOwRmAu89cEdd93Wi
bopUvIj4XV4OSMk9d1p3U46RFkgOhrjTaFEGDeVdwX0cevwzU1ZNuEInNg9TPrPe03xZcKlS
pfZWhTbIWHxaPvQybm81Oo5K9MYCh3z5+dv6sHkK/lMGju/7t+ftS9kY1noeIPM8EnXnMGTl
q5V5F7PjhVMzOcvF5vAiXcxY7vTs/UNf0SSnSmf4AG4bZJOmSnxwvR27uowxmzY9D6qn5k7K
UFKXJSOM1H0er6RZ5IjvcquGepB9szpob2uZRdj0aNsF2HZJPlgpgWdRiOu8nxsViN7M7+e3
/ffNMTi+BYft912w3/zvx3YPh/n6hi1Wh+DP7fH34PC4374fD1+Q5DN+pOC8OLbzQHY+Ht66
imIyOR8QE5EDibJLdXbtz+Rdqouxr8HbogHdTm4/HX5fg0ifOni8TwJdXbefs4sfbDTvEg70
jnfJum3gXUJ8l77DJisJxr3tntIsM/UA/4pNDAPuUsF6vxy+bXdf4Hzhon7bfGonUIJloMJg
/iM9x8YK/2ssGjhfnyrBR29bzfNx+6v8SAJsHkRreEvARrq90SXe9CCW+FM479g7wRQdGmwj
3dFNMGn63yMjoumqbkmGMd3B4s4/tAdvbCuol+Zw31NSFHigkBMZNTCH2tK33X3m6tG/No8f
x/U3SGTwOgam0+PotIlMWR5n5lFjyLS3FOjIlTVbhZGhYIVqOzYrMDb4AdDymoJiDOd9/xqS
tMzZNq9v+7+t9KqfG1SlT2snAAC7FpkUSzs5lvEzMZFKz+w6pFnsnNLCdCC56lF91GC3F9fx
W5FCEFAoozGmHHneRBDoazsfF5j3CEHxDjpBV8ZmosO5TAR03SBkpVwQuEBO4/ZAycxzfnWg
YwKcDO4Uqs3t+ejmso1yKMm7rxjuNy3ws9/Q08fGfjuAeNMl58vRAQdJLpG3VzXooeA8bVXp
YbqIbB16OIt56rd7D7LspfJ1FUd1t44VJtuNUqauDrrtXwJoSe8LqrZcMKib1lux20Nb+tXN
H9tHT2WgCEMinIbhsujUY1CEnx/X+6fg23779N10PrdJ9faxYhzw5qI0/BZl1JnQtKD+F/qI
LlVWDBwo7FMekXSo0QC8k2HfVDjMJ2M96Zsyw8vb+skUKOp7e6fLGqh1lWuQOUMI6xdxi4Tk
R5C2XtL23bajTA5ZLtfeVy8B2IU0xaDf91TYDKi9sB2hdlfU1NfKjGPZ2D/L4hgf7ccNQeGm
VfVUey0VnC6Ftz+6RKMOV2PBBGV86QQsBkvMQ3tFY6IBD7em8QA/FllAEuV+oAWpvGNuy9+a
TcIeTBYZay97Bbwb90BZxnifoe2ea4aQSkV3DBShy6LB6Gz6Wx8bhtYrqqmRlC9IoGuxrYuI
imke0qan2E1R+jevqZs/mRvvOl8RZlJN9YzJKb7QnHgoiDKfgZcQzqFtyyp/UA9JWNdBVCCf
JbfK3bWMlvHLpd8OZP7PEJV1yjy2/w1hFVOoZQ4Q/TR+WeMAyyYQL2rOp18dQHQPwS1zZq2j
IwfmqAvHsgXc+iUcsRM2lAieLt1Zy9DLerqApLx6L7FaDQxIk9X19dXNpTf2LSnGk+vzOkTL
lxkN5Mf7+9v+aJdpHXgZBW0Pj5YS1TYkuphcrHRU2KVKC+jeO7Am2X0nLA7lzdlEno+sawcK
nnK5ENjqJfADD2k7YVJE8uZ6NCGpz9YwmU5uRqMze0QJm/ieSCXNJRdSKyC5uBi1MtSIaTK+
uhrZ3GqMkeNmtPJwTbLw8uzC+cQikuPL64EePUF8l2uF3bcrLaOYOh3aCZMM/pjTe/AcvrfH
cFJYn25DRCl4FhyaM6432cA1UZDoWqurwOVbmYd5hc/I6vL66sJyhCX85ixcXfagLFL6+iYp
qFz1cJSOR6Nz25J1JK7eFf5aHwK2Oxz3H6+mTRwSYqwAHPfr3QHpghdsYHsCLd2+4z/dR4f/
9+jWSSoKHh7CjiJ19ilM/J9RF8uC5Gygzc6+Q27NMmo+XJWhZBVR/9QQiamyvV++AeXXzbv3
j2OfVXsv8mLRDw0TCOtMJMG+8ACHOD5D4jey/jgVkvzuM3ojo49p89GwT8xyTjil9eMR3FnP
8Ch1b1+Kpff1Pmerm2vIju4tW1xq9iCw+oJ1cnFpFUsjyCVNrNGtupUHBn53/VI9ZVki4laR
tPQmoZO0lYjryUXHsDRg66sw870Tz322zh4wvgTzRfSSAMj52MMmirEBc+7HZTTXGYQhrz5k
DlEqEcrKLm2swBp+RhsS74rKZoGhbxosQiIL/LR0idx+sOjorvyW34sa2lqhJtfXPqttE1Wt
9B4e4I4LiAywXtvThPxt9xmHA8SohLEs/TtcMsL1QfJOe/LXCEzBIRY4QdAcy7hDEbrfILZA
i2d3YZLFEHcP7wsEqfmq8OyIDMeXTHa+i3BJqo8jPIMr+/pVkdnpA68Ikai3MguHnsmUGHuq
ahNNySLCnuXb8fhiYjcGeWirHTult5WrhkC5u4Ye424DtouOZarT4vRGwC+6Mlkdm7EQTJLw
bCve5ofxmf8TmPrcCuGLoSssKph3s2uE6bkrt3rc490QeXevdlyu4ezMk4VKpHpWQO7VX18O
bE0lwLuEGU+jmMmk8hIeaBXj925YvkhTM6oxg8kybDNeVwhMkp3Ex4Ib4YGR29aEM3eby1tY
2e1021THDNTNtNPCt6M1fQEzt5JjrY7xZo0NnEHaW/0/gFhrMlC0bNqtkJdwDGnK90JbGgsn
VfdTS5eq/FJbmwXFxPttr6GTrDeBBMs0RN40IL12pcKmIh77BiZ39Qd41qAGWH52yjjkZafG
ggk5P7NylhZRbrufdwhqMbBLLdGKFQlYn6HaWEewtoISwv+KgUwivUdFfe1CMEd+tXqJevFW
U6io9kYspLI6BeuYFbK8vp9zUj/4UbazszzmLrh5FG5PEKHmI8il7+ABmy1W9dzZx8sRgvbN
XyA2yhH+vn33CoMlDmNPkHea/h9j19YdOYqk/4rfZubszrYAIdCjUlLaakuZqkSZzqqXPJ4q
97bPuuw6Zdds1f765aILl0DuJ6fjCyAEAQQQBLWc4v1CZbaaI16qhE3ZQbp2KFOSwAeDE09f
FjlN0V/g+bkiQt/s1PACCXGoIe8NhVa1m9RL2LXnsm8rWxtWK9ZOP+5durG6FCA6Z3jUbdBe
7zdLeBuV77w2UFtAS8MtiqUDe1z9S20Qmani6u9fX17fnn5dPXz918OXL3Ih99vI9U9pgX2W
cv7DWecodVLa7jetw1HVyndSbxpDBp7DW3f1CTq2VZiesX75lMsUH+v3wAdHsTRdrN1+/5Qy
bm1MKNpt3Zm2smh7Zd45GyWKKpXp/a853BLIdtMt2HRDXbolGWtnOeST48WznMYl9JtscNlK
91/uv+lBxF8RaYnCrStFHoq9kBNMaFPv3/40+jdmbqmB38bbSBSfqJI5XzocN37tibYALWKj
LmpT2zW0F7pSc4g+bYtakgXCEPfcstoJRVNRxAbQN7u6s3DHVpKmy2rKrukbzXFTNk7CvoEM
Q7NdvsxYAuLqezeyRA9u+k7m1tArjvB0SdI+Pz2arRp/KO/1/T/tKnyrJ2trX3SB9KLdl2TE
Rh2EpZ+Yxn48yzMGwHz5HgxS/dBLaV8+/48P1M/6SLm/+SjXqTp81K4eVNRFdVdBGxrSiO3U
ibp2bXl4uJLKLrvPl0e1eS/7lM719b/svaywsFl2f2yfTkpG4BKEHWp2Zi4L+dWUsD3u9PGx
m0L9gotwAKPugUiTKIUgDGNbmyakK3tMRMKhxhlZlE+JE9Vkop8RTc4h3b5s7icZuu15Gd7m
FEUrO01In7YFgnwOtzyhIXlf1u3e3aafPlPdElPx/S7Cn5VM5DCpba/3r1ffHp8/v31/coa8
Ke5VhGVuG5mvsz8yErTzgfKyGUN2UjRfYdpvvelrStIcPozBCL1Dv+iUqie92NG7scLUauVX
QLqckEddopvZ/hhf7799kzO/FgCYEHRKlp7P+vguJoNZ6FvhvrQU0rTd2X4tmlrdFb1zhcdM
64P6kyDocMEWfp6FgxyuDxGLU6M37V3lidfu5br/VHridRueCXYOsu/q3SfkBh1wWqjoClph
qZf7zdHujwaN7QlNrSv/DRIZ+yBa41112ZY3jqEZb9DZCNTUh5/f5CDqmBQmz6qnlPNAkqLa
wV5vpuLvZKPA+5Gm5oozI+DFugXGZ78ZDNU95NKItuvJORBypKsUcVk0E4vK0pdbTpkvy9A3
JeYosesaqEvTqbbVX6hjnHi6WByaT/ud34E2FUsoDttD0hFH8KbUwhAJgjEyyGpA3R20LjS9
tMgTSj15fHvZdKOe5CkJZGx7zggc32FuYJbReFOYqcNvCZFRjLgngibnsoH8TjsC0BLD4Hdt
mhC/MSQ1S9LEK/uu4wSF44IiR66CTniep6A9DeiK1qHT4/e3H9JqWR2Si+truUj1QxZ5dbwv
b4+wpx5YxvS9d2iaI9A///dxNPa7+1c/ONUdGm3iSyVwGjmWtZnQHbSvsnC4k+ZCF9eNbe4D
UtnSiqf7f9tnXDIfvQK5DDf1oXPyN3RhnAdskQ2gPiuB+5nLA5lZDgcii5K5SbMIgCMpjIEE
y0Gg7uRyILunuhB5NzGPlUwTuKvbPHL5/U4BjKNYAbxOoMvRLgtigJaM2jCblPqWpHIbsa/J
LsTJpLZtTQsdfX0gq9riGvUYzEH3TBXfEj6dsFnbocQ5jcoi+/+xjQQtc/nMTe5INsb8gA/h
A7a1DeHxRmO3r6xd8jEZiCnvmA6GTMnqPnP70W8nQw2u2NrYzZ0TaLevCoM76qUHdH03yB0k
Xdyk++qmo4mhwzvIygcvgEdwUwxyRPt44bzveGYvs9RO7bXa/5MWQpJZe+JTkvIOJ4iGdNVz
MmfysxGw1zkMKJoUmjgnBrFxdskm6SUZdjQrdsUaPmW7+YDZGTwDnSUrcuSe+E+ItCkQkzP3
SuKRBYe1qBGMrFXs9ElzUwWItBdlUxECVUQjelUS5Fg0csgSeZ6QMFtlO2EGZRpdJi556mpe
5WkHklHo6s7CUKYow87OuCU0SimDFkITS1WP1yA1b0azUMcn6w/6RoPl5J3vlHWXwxbuxCNV
KUUUUiWHI0/CFlAApgwGGKGQ3BKiXnEgj2zzdZFozpOwyhSQnc9Qm4huQ9K1FtF2cJJbuU5a
f10cr2sz0aTgODCd9q5+1mHIU0pXBDiWAiUJBr5qXuIEQJ7n1H4GxB3S9b+XU1P5pHFD2eyy
GHeS+zdp30KW9OyDWLEUgcFXbAZLyoXeoQQ7NpULxTwHbB74rMvlyVeFkxz2IaoNIMYi0uU4
jURCnHkG+dV/hQcaTByOzI6QZgPMmbdc6J26uxnek01acu9xlCzD8DnizHNuVMx9fZHnsAdD
Ls+5KY8rsLaHc79WR5XIcBLWkHJ2xQige4vzib6Vq/6EbsMECuB4ew3V9ZZRwijsF2c4rluK
uOjC8iSAE9GF5V1Le6QA+GVlQ9UzHuxBoScmlpvmJkMEqKNm0xU1IIKk9/U5lKEZOAupv5cp
oKHShjsgjEG3ZXXRUM60KyKbQRVoJgOwsLwRGE/8wyIVDE4eLgdYx3pOB2d9mwMjCoqVYhzN
FafQyO9wZEDDGQDQbmU1YKCNFD1LMkBAjaAcElBDGbQ8tzlyuDiCGKRyymk7w8B4qwGSRwDb
6HQACo6BGsqhWd2VMIdTlz1J8FpzD2VmT68zuReYcLBdDkx2dwK0ZJcRQMs7BvIyqEd0DGgB
SeVQDhy4XyCpYGkcLI1Dna/L4Y4uJ8o1/e5yEklGMVmzKTRHClS0AQA970vOSAZ8vQJSqM/s
htLsejXqPQ0ALwfZO4DWUwBjgAwSkEtKQJV3fdkx1z5dxNtymkPK2HeOP9WcACYrewZnWQRg
FGqHTd1e+u3aOL3pi8tBZAlQr1vRX8hHYBLZdJdyu+0FVGLVixwncDD8Kf1O9Ee5ROxFD3xm
cyAUw0alhLL1bi05eJKlcOJe0DRZTS3ajCMCdkYsl7pA3es5h/HI7KCg1Y0qi5dwBDahGqEp
SdbNtHF2gENFuLPB+znhhMWihDtMq/OpGZ6hAUghaZqCw41a2GY8Er984ukxf58lf8eA7psu
JbFI6XNHzFiWDpEQ4BPTuZbT75pd8oGm4neU8AI0IsTQV1WZrd4r60WapBgYdiRCScaASfdY
VnmSgJWsIByJxDnxnKu+Rnht6P/Uyq+GRuO7Tlmz4dgpNoPrlzsDci2z3liS4511iuQgP9/j
AP0hLbyEVhtdLe0gYEiouxKlkEEgAYwiQKY2McO8RCfKlHUIrJ0RyyP3/hy2DVm1mcQwCNlt
gbbpugyyLYuqRJhXHF79C8YxBMjv5JERfFfgZG01rxjgaVQiBL9j0zHIpLvpSv+K1Ih0PUrW
VFwzAA2p6RwSUiLrU4xigIxnSaeIQFmeBoRXtxjuOGGMXId5KoCjCgZyVIUfpgEcSwEYSpoO
jPGGrsYB38fY4mjl9ABG8XF5st011HoSzDC7gY5iXJb6ZgsKoA841lLrk47l27QlWTgfM5J0
3A1pYzYl9DUTU62f99mpG4LjKZJ57ODSiSWm9sTs7fdNZDeM8ERVEX90oNvh0IChyCfGKZaK
iicqhrq/3DWihnK0GfVDgDqUAHzeAyQxEQ9774ZGkCSeO8BoywvAG/XK9sZ5eduGF4mcLeT+
OHEBpVf1aXuoP1gNH7To0Q+lM0E62oN9bDZeMYH0TWzUk2qicUKbS6qjtZJpDGnReW0M8USc
wTYqWk1Y1qa0367WTOqtZfWyiLMpruPkvCOEZhLbtohsmtuZXHeFenUXPn11GFc+ZzoIXa5x
/PHjWT8hMd0GDjzIu201+VwvJ3SSVpQDz1MKvTypYUEYsibPiWYbZn3XlLOXk8tZDJizBC54
6ORCbdvW53IP+YgsPDdtWVme9AqQtUDz5Hz2qJOPU1DWucfJWe2ywSeVkqVTt3Lgq0P6+9QO
bMS7SSXXG7TYL8FnoL5gippFXmWaYMhJYwS9U1FFvS6GWjlKi8u1WPnaEpHzOagRm6PHGc59
eW+aTE7lukbAvKU9eekL0ZSQ0AqUBSqHMi/b5oPIMDQvKXD2QXOS6CNa0MdwQamrjeEBvGl4
c7zpF2AOJcHYFwsc1r+hcyiMyALbZsVM5SkJJON5AgnGcwztwM5ozoCccu4Rh8xsLbm5S2oO
v7Sl4Xq3xWjTxdRmN5zr0i3nUA9HlzIfoi/uGiNFGd+O18pEjx6DH8uNXJKYISYq9WGgCYGP
lzVc0oHyWD9THurc19jDjg4ZgnaZFSrq0rvgoqlNyrIzBHQ0QX4JmhibBTTD7UcuNRcHCaVd
DRkWGjOOx16KoZHrF0Lo+TKIUrZAJPHo9/nLpXHGg9qRGbYdFN1dt/7k57nYRr2Q62rw3N6c
YyNrXjEU119bl6np0Y5nHYiHyTCCVpDTl2i/VugTJUCzWEe0PFfDAnkWG+0sz9aQimGqe2F0
ROTgSKyJe3R8BbRvQopjZftijj6xQIK7FmFGDOB9XNsRutLRhpJQnsdn0eFDd+aRCLEq9315
syuuC/BGlprmR5/qXwDRP2LT9pBIWQs+waI/s6MoCXqXooI7XwYcx14vie+44oJy+PIqeHI8
DmhhS48rNoAG8uZ56rfZYX/TGf9x0AnLZnEdN9zEOND0EZM22bk7Rp6S0uOVMifAwMJmNNsG
nU8uLHAWGnQjx8GE316sTvtabsxQnhNPO9d2mTMx+kLuwrFtzioIy74dims3nN3IMD6+oMML
HDvX03DhUos3E/l34lstVdo213JQgcobzR4GYcr65/YmmAVVlOQcTGSseriCpu7WVnuoSUNG
2fbKhROuBbP8AFXHZQK3bRcWa70AZDBq9noO5gZGNAP/9gXAMy1OwCzM+mA1B2Xw284hDoLt
KcNDENxU22JHCaXwNrTHxkGn0oXJ9eNf6GbBcMrcXfkFb0Sbk2T9u9URFWaogHNQVglbVzXN
giHxtN8l2GvmWR9EKNhlQmPIwszcty6n5MlYBoljrVJATFoUEShYpTgoz9J1mTSPfQLtQt76
xAPpeq/UPIzAFTYuZN7PIOdRCQKvUpiJ4wxqzq7skaw7UHG6nqYITtVzTvMYAg/RXf+B5Riu
ZLkeQ2Cn1wiNpYGbzL+eayFlkacUThQs1yxsy88JnGp7/KQiFIKpTnI8ySJaqcF3hhvNk8cy
AO8cLfiHct+FIWxt8Cg2l5PjkLAwHArRb+rD4WPfXIb9sbwR5aGud9ImGZrdRzDFuIAMgSHl
Cdi2h6E7wfogcNcXcCIFCYTAVLTjLIt01WkhuVppor2mKIkN40LmkGTw9pnDxXEKm/8eF4Nc
AxcedQaMMoJhadS6CJMMPu112WT3Xh8grOVmBMtBFdcYWpNQLQ7fL9q75Big661mrQOhLMzK
bzWHkxuGYAHC25EuFrki6TCl4Aaew2IWLHA3bYtNs7ECL5bBtoui7PZDs23cm0BdXTWFRuNP
WBqe4IFFh7w8L+VlLY6b6nDSkX1E3dZlGC20e/jyeD+tQtS7j/ZmvRGv6HQE1VkCr4xiV7Tq
rcDTux+hAt4NcsmxsIa5HYpK3UwPc/K/rDq8W950ZT9emr4xBRY2X20Pqmcq49RU9f7ixEAY
K2yvHbad6GzVaTPpxHjV9svDS9o+Pv/4Gb5GYXI+pa015y80d0Ft0VVj1yf31TQDF9XJv7Vm
ALNK7JqdnlF21/aDRzrPru6wuivnBqZTiD5nurQyeSl/CR+9U49n2Mte6IstDfz88vz2/eXp
6eG7VR9+R5krVtXnSnsBmZlXEx7/+/Ht/ulqOEGFqDZST11A55EKKs6yIotePweMMjfdGEbc
VCUYQ18x6RBeotZRWS7tXggVC8LWSsWlnt+Jh1kHPsHux/N5m/neMdzWH49Pbw8qXvL965V5
5l39frv621YDV1/txH/zFHFz3GJvPFvogJJqunrxxA5VsyDLI4WWyiz5ddODJXOdyCKWnjy+
BQtUsGKbtdVw+dq+KLMOY9iqI+mvdgP5xTjbNk4FW3V+//z58enp/vsv4LTTDJCDil4z9fzi
x5fHFzmifH5RF+//Uz1k9vnh9VWFJVIBhr4+/nSyMJIPJ29bdCRXBUvdyX0Gch65ZTNzILmu
ga2gkaUushRR+IjNYgEPp8YaFz1JbcPckEtBSMJDsUtBCejUv8AtwQXwve2J4KRoSkwg91fD
dJSfTGxneEOWs7txOPbyVHQCrUrHIbfHTHT92W8Tsd99vGyG7cVgs/78tXY3sYMqMTP6miCK
IqPj6n6KI2SzL7OLnYX3aXI+UDd2ot9mcAJMIyzlwRcrcpakEbIybyCIhy0xkqEUm4Gj3OeX
RJqFyiDJGbx7b/BbkcABdUadbXkmJc9YqBKy8hm87W7jZ19OvefCUhJmOCHqk6O5DqeeojTM
VZHtPfeZzJwbjyP5DvMkDfK4y3P3rQWLDp1hLTAKevWpPxOMA7KcN3Os94Us3VQqf+/0iFBL
dW0y6DBgHA7OmPI0CYwMsDM8PK8Wg+GzZouDx8cl3V3cnWgbWE9IUqD+NQDuGU14Tni+CTrQ
Leco6J/DjeA4caIIeXVi1dPjVzkw/ds8RaUCcQYD0LGvMrlcQ4VfjAE4CcsJ81xmwt8My+cX
ySOHQ3UkAharxj1G8Y0IxtRoDia4f3W4evvxLI2cKdslfLUHzc+kPMjp/Pnh5cfr1Z8PT9+s
pH61MpIEg2RHMcuDXqlsdq+xxKDjN1bj4Z71xESkfKO6918fvt9LjXiWU0f4rMKoB/3Q7NT6
p/XluGkozXxJmu6MURqqr6bnKx1DMVBo92CBWRpqt6KD1wlnmISDvaKSYABTVErDIvanBBeR
a7oTB87AiA0LTAMhFJUHI5ym0pBKsxQYFDQ9PiZomIGZ8ZDqX+JbuMFgYxZMfdVQ1BygMmy7
rc9Uc2ARFMzWK5VlDKg+xuCK4jzyUOvCADo+THAeaYAcjv81wYhwGtT1SWQZBpS5G/IuAR3P
LZwE87EiI/dIbAZ6Obyu5Tck9k2GhYwQBvM7JaAXu4WD8p1A+cQhIUlfgvt1hmO33+8SpHmA
6qLdHnz4yTIWGLo4cS8NdKiKssNAexog/oWH32m6CypM0NusCCYxTQ3GdElN6/IaUHiJ0E0B
exWMVkoJe+satB54fetdhZqCuYMjvZ4EWkkLV5uTaUA5Duaf4pYRFgxR1V3OEKDTig7eXZ5h
nrDLqezsmcsRyrzS+HT/+md0jqrUsRZg+yjnncim+cyQpRlYZ26JxgDoG38aXywAH3MX7sNx
t4TIL3+8vr18ffy/B7X1os2GYKGv+cdH9YC9Ro2qdbd+Yia+tTkzcniWDLiY7YAclMVsv2kX
zbl9IdkB64IyOxZUCLoeoRbcDTiBfXg8JvtwMMDISvY4A/3rXCZEIh/+YUCJe5xho+cSJ6AP
hctEE8ddysFS74DKEezcyqRg2IuQjQ2RCirTVHA7gpODFtJss71pQp1AHEa3pZxaItWmMbyC
kXWdh99Jt9jq1NQpmMe2lJbme72h41xfqE6grX4jyrHI4dna7cIY0ah+N0OOwID7NtNBDsKx
1ju3JEGHbUQ7O1QhWZ0pjn2D5tjIr4Sje0IDlT2CvT5cqd3z7feX5zeZZN4s1n5pr29yZa7e
Bf776/2bXIc8vj384+oPi9XZqhbDJuE5vEIYcXVTNbIdLoZTkic/3S1YTbSdiEZihhDAmiHk
XHbU+/Sy65zhfU0Nc14JghJncQ1VwGcd+/0/rt4evst15Zt66milKqrDGXr0V0HTMFziqvK+
q9Ed1fmqbsd5yjBEJNNcJEn/FNEmstKVZ5wilPhVpMkYdpDVxQ0EwddBFPqplW1KoBF4QXOv
qegNSl3bbWpsHLlQPulPsqo/OM9BVQmIUtM8opo6E3uTc2qrJLG9mCZWnAWadqoFOoO7NDrR
OFhUyBvWFtA0T7wdTLlxXZaj2Ur/MrlnYOMjeL9rUY5opUuVdR0YtSDi/ym7sia3cV39V/rp
1MzDqdFiyfKtmgdakm2NtUWUbXVeVH2SzlKTpFOeTN2Tf38BauMCquc+pNOND6S4giAJAp4W
n1WdHNx3LK/exXDbRyFzbQNq6JKtOx0g4uBvH36xTku5sHUUyfvNmdapNKiyt3UciuhpIwkH
snrjMs5+MpwxQDns5iOXGmWbTqWWXRs6+iiFqRhowgBnmB/4+pBKsj22ckGHgZY5qKPmEd8i
btRuoNsuRgEe/R2YVYxUKjvsHNfX809jd2V04OT1Q+q8fuilxIOlttH7DqgbV4tyDkDT5l5E
7l0X1DPEFIppSiUUvZG4sJrj3a6I6joP0XhcQayDE6WHslNbms0jx4tndPkgAbfGSsZaDp8v
X+4/Pj2wrxhW/Onbb+eX+/PTt4d2mTe/xWKJS9rrysIGo9JzLF6WEa+aQH8lb+CuT+l+iO5j
2O2ZC1R+TFrfJ2MzS3Cgt8dIt1iADRzQlVbZhpPb0RYUdokCz6NoPTQcSb9ucqOnMGvyFGZU
WcKdN42ejCfrEk7NeUcefYwTMzIFCgpbz+GTOBVfU5WJf/0/i9DG+OrU1sVCd9mIwAmKEYaU
98PLty8/R131tzrP9Q8AaWUNxJUUqgprhK1jJR5xND8cDKTxZCgynRg8fHi5D8qVOlVBvPu7
7vEPY5iW+xP5BHIGd8YQLfe1tcMEqI01NDvfOIH+aUG2ZjSgviZ8I2+nkfIjj455oH5REDtt
cWLtHjRn31RkEhaGAeXdRZSj8wInuBoqOu7TvDWVABcKywsuhE9Vc+G+fZozHletRz0/FKnT
PC1nU6z45evXl28PGYzt+4end88Pv6Rl4Hie+6tsR2Sctk3LjLPTdd3ak6/ArLsu1bDEtCIR
hTven75/+vyOiKKVyBEF4I8hGFii+vlBelKDXOqoeIwqm3BfW1A2ywvM0/yANnPql88FH2MI
mvTDfoGI70HhCt72bVVXeXV87Jv0QB+XYpKDsG+bXT9YSoqRLXvYLif9IWsKjAeolgo+qRgY
IO2YFr3wvWCphQ3DdPyENkUUyuNTOusE+EhsvHB9AClD3yxiqiF4JihcoZrbEM4vd0PpEmyi
l10tzvN2UbcCBspd+VqBBi2iKczDW9EiVZEmTLmIlVhlzusx1UbpFZpTEQdAa2LWYBS8U1JQ
EelmlvyacLV6NSvTfNa6Pv/1/cvTz4f66dvzF63IgrFnWIC04TB88lQvxcjCL7x/6zgwJoug
DvoS9O9gR+5N5jT7Ku1PGb4C8ba7RK3vwtFeXce9XYq+zEOiFjh1+7igUo/1Jko7nDWvFi7N
s4T158QPWtf39Vk48BzSrMvK/gwF7LPC2zPSN5PC/4hOXw6PsOZ6myTzQuY7ZM0zjCR9xv92
UeTGVMWzsqxyjG3qbHdvY0ax/JFkfd7Cx4rUCbTT1YXrfGIJ47AZdSzn6xJrVh6TjNfoBOic
OLttop+mmb2QsgSrkrdnyP/ku5vw9s+TQKlPCej7lsOyOUlZXRkmEeOONDUiecNw6zG6cwtW
thkGiGUHJ9jeUtJ34MJe5VmRdn0eJ/hreYGBUdEZV03G0eP+qa9adIKxo7y3SOw8wX8wxlov
iLZ94LeWUQ0/Ga8wKvX12rnOwfE3JX3KMSexPIehxlLDHpMMpmFThFt3577CIixniHHdVOW+
6ps9jMnEt4xHzgp+gWnCw8QNk9eG5MKd+ie2PgEl3tD/w+lUGy4LX7HehBJvFDGnhz83gZce
VJ8QND9j/zDv6gAZOlSb8zQ7V/3Gv10P7pFqcfRUVff5GxhAjcs7h+y5kYk7/va6TW6Oa2mX
iW3jt26ekhcCspRtobthDvF2u7V8V2HxyfKjYSiLu423YeeabtM2QVtWGFM3fqJPKRbW5pI/
jsvTtr+96Y6k5LxmHFSlqsOxvPN2O7o9YJLXKfRPV9dOEMTeVjv9nY3PlRVW/tq+yZJjSq59
E6Is0ou6vb9/fv9RVzFE1NxBmZWpp6yuyrTP4jLU3hMPMPRBC59E9cm2e0ANcBT8QCpFwBCr
JgmSE8RA3kY719vrTbfAu5De2htMly7WC42LO5QkSWk7a6HZp0cMf1qjF8mk7tBj0jHt91Hg
XP3+cLN8ubzl8p5ARkAhrNvS34TGTGxYkvY1j0LV7boGWizLhc6b4WTIItpl0cCR7Ryv09sB
ybTf6gFFRWcZS0rS9pSVGGQtDn1oTdchfWkIxoqfsj0bzW5DT629hm7URtPQ7SoaraGqv2iB
w6J1qDfW5R5wXoYBdGSkqY6Ysk5cjzuyA31EhmdZIJFY2YW+HA5AR7dR11nQpF5JFnqBuUNB
y9XANcSuBA0eXiw1lfmGXZo6w1EsFKekjgKLBYhdvmgFGiIBW4qRtiW7Zle1eiPRdEoo5mjH
DcJhr7VeE9fHi0rLcW4/ah/qhkd9+DYSNtuckqqgfKVlK/bB/ZtL1pw1Lgz627AyqYpJ8h7u
T1+fH/7z94cPsM1L9H0d7NPjIsHgEks+QBOvFh9lkvT7uL0Wm20lVQz/DlmeNyBdDSCu6kdI
xQwAdlDHdA/7BQXhj5zOCwEyLwTovKBF0+xY9mmZZEzxPwXgvmpPI0JKN2SB/0yOBYfvtSCl
5uy1Wigvog74HuwAKmua9PLLHvwMi895djy18iwCOkaqGw8aKPsR4MB9Lda6zcoj2e+fnu7v
//fpTgYlgvQVaAH41MuSPXcT4bBPaznhI4xOgQ7rj127CWQtGuhTdCctp9Epja39ixS1rKqg
drxYjsnySiJxvJ7Zygdy5DwQ7bB/evfnl88fP/14+NcD7H+mZ5/L0dtcFtwdiWeP+DAyi6ny
zJ2oMMr1XTjObeIF1D3ywlLfpKOBhSweIN/yVHIcvIDm2+gFGx1lrn4TeKJI9Y+ggeSJ+8Ij
BbAjcpgcOqyXwfTys4BoCeg71LZT49lZ0sM6Qvp7U1gGZypm8VG6yrHHF2j2iUdguivTBVGd
10hFuEJHbfOawvZJ6DpbSxc3cReXlKhaeEYnVVRB8zGk1DhtXpkcU3phoikLqqXUeLwnlxQ0
iYpcw41D7ykHXl1K2Xd2KfvLLtEb3uDISiLVcWEQ+jRXcxHELI13QaTSk4LBtgi1SyMfnr6Z
5rRCb9ityJJMJcIsrUGq8r46HPB8WkX/gDaXGwZpFed40E1KwqnEorpWjlNj4HLNlAfLaq3x
pXPMmoT/7ntKlUdvAyC7x1fmapGaKu4PpFdxQK9ps684NGSTla1RXZtDM5FyCMaslhGa/wJr
leq3bO6XS1E8WnJDHDuoT6+gQJl9anYei2GDLXZo+reI18hilTgl/xZPk2Rb45kmZ33C+LCg
v+CbZ1i+3qa/hxulJ7Ja6xt0DP1VIwwlREcxOivsE8u0Qb/BykA22KbxaSLTzYyJMNFOatsP
ZBG6LvMsrrI1Pl4nGW0/P3MW2Ae1lWdwzwycVo59XIS+8DPM+9sp46CkWedFykFDFGotcKtN
LWFDKw73yC/x+LgXb48P9+fnv949fXl+iOvLbFs53jEurOPbfSLJ/yw6+dQAB473Eg3R8Yhw
RvYDQsUb22ycs72AUO5s6TnPVntG8Oj9R/Cka2XMYlDvX8tgrD6ZQxdfbb05sTR1wY9m82VF
J1rg0skr3WqHylngcDploec65lj54+1mu3GGr3icKnpW2AQeokV77vdtfOWJWWxeHXBe5iDB
cnNeIlod6FTDpSsI6n3KdRG88EC2sBFY868i8U9mHbwtPr+7vwjvEveXb7h8A8n3HnBiDk99
ZUV6aut/nsosbZfBfrV7VdKMbOLYAbeAhYgwu1KrMYEY2WY7du2hPjKzx4euBnGFv9fZ1C7D
0Z5hPqCI7mlxMUQku/QX2NMRX0LM9WU7YR0Z35wSghfwrS0WlcIUuhbfpjKbeG1u+Q5oulF/
oq/JDL5XPnXeuEosnIW+CWh6EGxIeqiaIMrIhgxKMzMEvnwAJ9EDsgh5HIQe+a194kUh6fNr
5oBtRFyZmcbcD3KfbPEBWst04CBaZQACe66WWMEzz8bLN5YwSTJP8NqIElxbss0Q8i1x1iSW
0BLQSmIht60Kg0s1EdJtswrRrjMGMcXnu+TVjsyxob/vb3YUHb2iOASAkeJkt6ITkLCt5/oE
HdZik4rbNlr9RTTlW5eONrkweFR1Uh75qnG6jHiviYNjW4QOkS0aE/TN2Xd8Mm98Xxo5EWXM
q7D4wZaZmQsocIj5IxD1SZwC7UiHI+ont0SXTIjqQMBAeXKzoTtiZAyldcjS8iLauWF/i5Px
tH+t3BLz6NzN/Bioym4YEV2FwDYiRvQI0HUW4I4Y1SNgT6V4PdUAaypfeaWoATZhgDDUmb0y
hoENfbsTA00g3n+tgO3DMPB98vHizJDDqkP0RdOCUIrGcWRmCyh0M6BrWbdB6BKrI9J9l842
CAMyJJ3EEBEqzkC3lxZUklcLu3XJZgAyPZsmKGZ2PLCQV1Ks5MiPbR4oDytmZLgNZfBz8Clp
45h2Njr6yp6N88LzHVIbQCh0bCGGJK5NEG6JcrXMp5YkpAekQOJ4+cnW9rEt414QEMNEAKEF
2IaEGBfAliwHQHpcD5JnS0e2kzk82wdA/VxbSoW7N5cQmO2B7aLtjsx18Yz2Sp/NnL72wMtk
8LrNP86M6GwJtAmykSWJO9dibDBzcp953paOurMwDfrZWomRhdowCLdx/oYq5a2IaBs9mcEj
lnVBt2YZrdcYHdPRYSklBo/YjwiPdqQkFsiahoIMlBaHdHreCmRtLyL87pFKGiLR+mYCWCLn
tUGIfnsduvV3lBKHdForQmS7NjUFQ2RLSvoOmxk4E167jOK8FWcWu7D2CBGGKtw2IGQBel0P
yE4WyKrm24Yhpe2U7BL51OKGQLCxpIhcG0DVZwAokVwz2K87jEiT13ixCu0HrRE3FVXngeU6
cqzUfWBsuteyajszq+Wth3LWo3xiWI/xVoU80Vlg7e5BHFodG1afCBSvyzPpjGC+B5gp6EK+
OsWZzTQBccO3NBLjqlDCoCLtkteZes0wcJaldneJZNbEp/7EeH+KlUB7gBHdIDJC4x66MIAo
RwIzsT+y5JhSR5TIUuCPU9LEanaCPCScDvHrL08/Przcvz4cv/z9/JA//Xy+L2d1c5rhUHdK
g6SHpGAPX1/eP0u+YJATmqOvyvxR/XByi321b5Ai2tVkXC3h4Nn3geuvgubE1WEyh9CaDVDq
jEu06An90cnWNDIVFsLYgsA+0IJkRWdBxpspC9qmMOZVLOO1u5XF00J0zbKN3GMj9k2Vzyao
2G3Yarq3ZKTXn37+9fnd05dhCJjHtqJvT4/ygC6rWpC7OM2ulpbF6aGFcmjZ6VohuJR7Jg0x
YPePU2Rfs2q+apWNA3PrYMlIubRSM6WU04AzaLP3cGUojdh4s2urupQBGnKpFw8mB6Xpyx+D
RuyTht1+9wiUt1XDjmlfXgoQVIcD2h940td6DmNuDHpVqQ9nliHwfP/8/dPzHZoqnt//qSPg
AD989RWKIFftES+DLgl9BigK2qzCTYTPKcl4M2LodWzw9qQkKq56nhroJ5rEL2vNo/dEhXyE
F2xNYGKZPL3f9km88t0ybUEt99TpOhLxOtoyCoa7F/soJjtH/kSe7fE2u+JZq9XvAOtjoZYH
hCTv8722zI2jRGW9jJEJ9fQE66Gv9mmn0w5cp1xY7BI0z6BdY70mqpXCQDtliU4Sxhby+cC4
YMOvB24sqCN9rJNtkZi42Oj+jcKw/q+lP0DD99xUJib0YIdEw9m+PcCjYe3rhRANbvuQaGYb
eMp0xUbJ92qbGRLT1D/SynR8ev/x+cfD9/szerR9+ev5PT5D/vD549/3Jy1OBGb2Nm10xWsc
pnPBxpmFrbIqWw+GZD5cShGrwC6UyfEvzGvGxUQbY8epytYMjVF87JP9sdZWJUEjbIkkcHUU
H/tbuo+ZprbAsiKXW5I7r/fKUob2sSa9eYsvwKrT81vWxorpa0FHMk4L3mbxWW7EiWZaTI0h
Cb6+3H/yH5/f/UmZ+M6pLyVnh7RvUozpuJrL6eWvH5KsnWJKLKOwTG9oKyjNVvxrjApC0IbI
IUsfS0gBuk4WV3nVaAn3DZoklmhBd7rhU/byuLysBg6qriLhZIFKLriCg7HW1fwsagyl73gB
+bhxwLkfbgKmVYjdvMEjnlINtENSI5QudHJrLmARztbR8hJEzySGG4q4Ux/czHSHPK0UsLql
G1Jg6OUNQZRPX0di4MivSiZi0HXT1tLEPJci+gQx9Iw2RFtei1HDhG/Je78JxQsxtWYYjA5K
TFOp9kEo9PUEY8xc3rL2wo1ym0GqlBxls29BkSPDKmMo8SLH6IbWD3Z6A46m30ZJ2phhjDF7
E7Z5HOxc8hRV4FKYR5NsFGMKEf/VGNbBf42yoYU8DGJ72TLuu4fcd3fW0o0cnni+oAkOYen1
ny+fv/35i/urEPjNcS9wyOzvb+gigX9/foeuamB9mqTNwy/wh3h9dix+NUTPHhTZM+VOQ6Bm
CPShUfIOOtheTYzHu9JBIuD5OMHsbPxY+NqxuuSvF0MztC/3d580waoMQnzREWhd17RRIE4J
58Zt758/fqTEcgvy/KhZzs4cLI5B0Gd7dB1AKXBNG4/+oeckSBJLCJkh7DYGS23TUhcg2Cea
Ibj4YxmL3apiJXcTdGppH/JRnqsJSl9U13R8RWUrG7LZ7J9HePK7Iru/GJBTympOfFfQcZS1
KenSReaKC8WZh9Ym8+HipRsfzi6SB53K5LG0uzwlm802cozjw5G+FD8rjuilJ8vwLY0y3ePE
o9TNmjXC+LweXX7M5MFjgAB/dzRyU4k+DJbsB2DQIEAd4pwd6aujsWowjdFonyiQzKBMZAkQ
qg5ZmaESi96aVWQprgcbkEFbrETDGk6Gf6oJMoyBVV4ofnHihODStAMtbjBO2XBuvLxWHGNl
vLu//PXy4cfD6ef35/u/rw8f/34GbZGw83yNdfrmsUkflWOyGH3NKE8NBop1xsywODnrxezJ
3qb9ef+752yiFTZYkGROR2MtMh4rgcFUeF+VlAvIEVWdJo3EadRqlYWVipkhzKY0ca48H5LI
6oWiDNC31hKHT+u/C0dEem+W8dCohiBHZJkKf+vRlnwjC5o2QGtnlec42B72jw+cdez5ITIS
n5s5Qn89K5ggkeqqVQZWGiBhsewodKZyNyzMvgK6E41lJVJQ/JFsBSIx08VN0JJgtbytF8nG
cxJZ9aogA6v9JThow0uZgzrXlHA1pMgEFIXvMToW6MhyyIO18clA7sE/1+sjo86IZVlT9UTD
ZzhUM885x0SbxGGHJm+0dJ5ERh2HpEXH9PHkDfqVMDMvAWt75rnkzkBlqog2E1CxXriJxw2T
V9hytq9jfeoQk5qtCECAE+aakwTohXyqupAv8vZqalA8IHjjG3QeeKb8ibxgY3ACMSAaHMn9
mmw4D/+j3mkMoUUCUZPUoUSgUOao6+iWHYe324vWOZAGF/CGAsu+vb+/fH4vr7UTScsTVii8
QJ4b5Mh7fMiwryppBbqUGeiMHFYmuQjjqmx6bjA4MLemojTOicN42D4DFb3vWfCqxtepq0x1
dSPPFiccL46+6sRrtm/Ejpoo1eBxJNGv1kauLsvxERt6KDhIg/iQpXkiLqrk6MCnAg+TMFeu
3qLjQ90RkYMHS6XBpEKZLcm7bowi358ynvlKeKXikOD7pI3nanHm8VmhFOx02BtJI2N5nK9R
+jqrpfeuJ3w9HOdnaZblZ/TRCH11vkhnthMjPnaEsZUq0xI2CmMm8iwZqePpCT0xJx40htlE
AZXrGPb+K5k3zwJ/Q58ZaVyk0zSVR42gpmIbyyIgsWwdsvhxEqdbJ7RiO4+udiz8q/ZxTaLc
K2ouG8Aisb3lobOhi4EvNeH/Y1qScM3ygqla+wzJJ1gS/RoHll7ZJ9v/q+xZmtvGkb5/v8KV
025VJhM/Yx9ygEhK4ogvg6Rl58JSZMajii27LLk23l+/3QBBNoCmJt8ljrobTwKNfqFxfMla
mQhR93J16hwSfR2guiitTOfe3D60280ab/Yx7yZ1qWCaYGZMJ/RDUqyO/2A65hKdnE8O1cHe
P3GJLsmXoLhb9z0BG8lnNzc0VVD3e83kAeUmhzA4vAp3ExC9cL4sizhLcnVpXZt2Hp/XP6GC
t9d168+vuoaOVxLfbYi6hmixjlIGmjfN4oAb4diFdoOHoysvK64kgNltnsag32LUCXC26uKM
f1ScHV7PS0WcTHLLut5z1nTO6doiqSIpmhRLUc+OrkiJBmxfY1ibNXcpUz8a3D4971t8Vdj/
AjJK8yrC+/nDdA8w4CP0mDJTdlPUjVRliC+MaUW3/vK0e2AaVvdu362fTWapzxqm8pjM0GKK
AM7op8iIWcN0yGq4PxAxUcQyln3MD3y87f1y89r6mY96WtUJY74s8+DoX+X7bt8+HeXbo+Dv
zcu/j3ZoA/4BeyW0I4fE0+Pzg95ClifKCGQMWieceX1e3a+fn8YKsnhFkN0Wfw43k6+fX+Pr
sUr+iVTRbj6lt2MVeDiFjLbq8YBks281dvK2eURDeT9Jvuk4riLqHMGf+qYaFXpsbD2R0Uyn
RjgbuvT7jau+Xr+tHmEaR+eZxQ/rAxmPWUi3m8fN9tdYRRy2v+r8WyuqtxAquWwqo2vTcvfz
aPYMhNtnKxe5RoGYdmNCSfMsjFJBE6RQoiKS6iJ0RrOXWAQoR5cgtfFodEOAkjBaWpRlfBO5
PQ99J+0wTJ2Pg9n50W0VDEd59Gu/ft52u5irUZMr79xoZSgwHp+dfyHOpwFxqh+U9eBfvlye
nXKIzovl9kDLRCwnNxRVds5r+B2BrC6vvpySOMgOXqbn59TX14FNpKFHDwhYwxi0Zrv9UjgD
JO+XiNnps4Q5+IEnLo3TQZAXKohAnaNjngQYX7ZM2SYHuirgYoQRj8kcplXqVu/kUrBwo0Ib
IpVHm3xVhGXVLc0PjyDl2KUKBgJBXrYLAkBlTTJSp7xW6dT93P2AQZmDjkLAuGLOtQS0WiYK
CiKDHZSSQMbDthkteFDjAksEdHvaNw57fOFkltERlHGRBxVNgiijMqooJ3cwExmkZTXBX4Ff
LlZ5W2dLF17EZYW5T3MXgbfCjAtVx0eDgl6+fd8pBjtMtUmAo4N2fWCXItVCI7hv2A7RnQSY
/j4TCD1RlT7RUoEIMSlRU+VSYnahdw7pN2YwZRxJaUVGWliR3LCbEmhwX8Tp7WV6rfprdSoF
VSkh47SQZtF4pYpb0ZxcZmkzL+mtcAuFk0D5iWpNFMUck/SmYXpxwabtRrI8iJK8wtUUUtMD
opQsqKKgS3cqCCrmg2iRCjnd8Yn7+ne31u110reL510grC0Zh3COxtlfUcDL42HFSqppQNYL
/AAeY21TKXw3NLXiGYaQhTKPQ3YMvYVv6Ivg9OXsJqXvL6ifLsvugGhBKkNB4mO71HBNhEqC
9SaYLiJT27OsM18tj/avq/Vm++BzvbKyaoGfqAJWeTMRJcv6BgpMn0lzdQFC5fiyQSDJS9gn
gQ7uZnHzSMhqEglSmWY9FbF2GUgzY6FlNafj6OFpWfNHqSEoKj6dUk/g+TSH7GH+vPbGxmJm
eb069bKQwKNVlDczsyqDTZdM2S8K4lj0zSRbZnvcmQWgjTAK8rrg82mpVkB8j1W0V184n1LM
WLlwmtBCBtaIKadT9+gszstuQuHsarJT6wL1tLTyUMFPFb6IJsssD9mZAhKdf06LVk8MYl5P
WLgoi4hm5kRUqXVMCplEjvUYgHlAeK7yesAc3w6Rwuqt0pfH9hd3SSWtbxsRzr5cnRDREYGd
cDjIfwBLPTeRcdkzTRDtJC8sZlnGOR9kWSZxCgLE6MKXgc7CPmKFrd1g4aHznk3HxK/YuoEO
bdqAuqh5vqUt3Ah8HqWKYNLRHV+y61jnY6ZM00CaCZrBGjuxbwzHBoK1H8f0Fvg5+hjuRvBT
jLEI5F2B8dZ0YgFxA8JKNRI+dCC0KNa48ZixqThQ+rrOK97hJ+oqn5Zn/FUdjWzs2wVT6AJP
nsPYMBW/HXs+QIFJhDGmfm7gz8HyA6VIlkKlW06SfDlSbQzqMb9eCVEagQiYF3feKRes1n+3
Vgg0rgVzdZGelBpRCdbZNwVJOJhHNkdSoH8qgs6eKp9JkdpLRSPHQmMMPp+gTNMkcWcrNWZO
PSotTe/at/vnox+wbYZdYza/zvNpyWYIWowcNgp5k9oXjgiwc0DhiV44BCjiV4kDLPCGV5pn
sRUEqy2Z8zgJJXVSLCKZ0Z3rSD9VWtgjUYAGrw8BDw246wOa4lZUFWkdZKFp2AQSJAvLuYV/
9HYgE81M7qDXlTruUEfu2btCYtCaqo1jUop5WLeMelAX6GYxnAAWj6W64905IjTp332A1ALN
r5O7CoR1fGDhs0+WIBvtE4m69STf8kPIM4ocllWPng85SnmxX1Nenp38Ft23sgpZQpvMT4s6
MlxyUdPvfO6RHeoanQuOnu9h34EP9+2Px9W+/eARaqHYHUlnoHd7AYuD0ycSqjgkpNXN7vny
8vzqj+MPFI334dVuPTu1clRbOD7xhE3yhVjkLMzl+We7RwRjqaYOjg9Vcoj+sV9ODi0Hx7mM
HZKTsc5fnI5izkYxo5N0cTFa5mqkzBUNZrExo1N+dTo+5Vdn/MtndnfYHBtIEpc5ri8awGWV
PD6h1w5c1LHdYRV3bINM/cfuAAyCCy+j+FO7dQM+45s556kveOovPPUVDz4e6crx2Qj83B3z
Io8vG15k7NGcEobIFJQumac0x4QBBxHe7nIb0xiQ8ms2P0dPInNRxWy1dzJOEppJwGBmIuLh
oN8ufDDIIInIQpdRKVRWxzzXtsY89nSIIapquYjZgHCkqKupFahSZ3HgKKXDIxZUn9EOy3b9
9rrZv/t3GRbRnSVH4G+Qlq/rCMO7USLkzpdIliAfwodBegmiA1V/tKYShbruJ9JSE87xFRGp
XqaxcwxHQY16TBOCNKLMuJWMR/Q+Q8sZhToUlV1UeJF63zaDPqG+g2J7o9Kqd1elhlAql4xX
jUCQR91Jm434QL1KmU0jia8duM+/smiQXKv51w9/7r5vtn++7dpXTBzyh354tT83jcA1TJcg
Szgp068fHlfbewxJ+Ij/3D//Z/vxffW0gl+r+5fN9uNu9aOFnm7uP262+/YBF8XH7y8/Puh1
smhft+2jegim3aI9aVgv5O7n0Wa72W9Wj5v/quutw2IKApXUBdU8UJ4l7IwY72RgRmUaGsRR
2VeVFQht7IsmyzPrng1BwSc0tY/ouBYpNsHGhwBVnukF0c8wvZ9iKND0ZROQd5rZiTHo8Xnt
HcDuDh1EcdhMeR9M8/r+sn8+Wj+/tsO7vOQDKGLQEajNoQOKZCZoKhkLfOLDIxGyQJ+0XARx
Macr3EH4ReaCRhASoE8qbcXEwFjCXuZ8cjs+2hMx1vlFUfjUi6Lwa0A52ycFlg8Shl9vB7cy
ZtgofINQTJJoNBDYIY9uKync18A6mqxOEm82EOh3uFB/PWL1J/RntK7mwOo9uLrM0sXJFG/f
HzfrP36270drtXAf8PGWd2+9ylJ4vQn99REFfnNREM45oHWBwkAlBy5T7lMAf72JTs7Pjy3J
VPtj3vZ/t9v9Zg2a1P1RtFVDgz179J/N/u8jsds9rzcKFa72K2+sgZ0Zo4POAt7tbQrN4SQW
J5+LPLk7Pv3MZYzrd+gsLo9PLpk2yug65p947ydoLoDX3XgjnqgYNzyQdv54Jv5HCejjdgZW
+VshYBZsFFhvaXbQRHIJWztkzjRXYL/8Obg9tJ9AQllK4W/wbG7m3d/7ePOtqlN/GBjkYvbB
HK/Omunzvi0If+N9mqeCHQcMb7zQDRZ6Mm+qPrS7vf/ZZHB6wtWsEONV397OrQQNHXiSiEV0
wn05jTkw69BgdfxZv6bgbYs5f0XSfOSxz2IQ+o0cv940ZGOuDdKvMI1hbyhHeeCfO2l4bOv6
ZsPNBRsZ3mNPzi+4fToXzo0lhoJLntkztFP/JK5AdpnkM+/DLQtoy6yVQKVP8ve4iBhxIip1
5Jv7ufOluh7grxCN8DI8mGUg0gg0Nf8gCARqImOFyuqchV4w3yNkny40MtPI6ddxXr9bCuE8
wtRzWllYER79lznzYNUyt69T2PAh6Ny8FfTy2u52tththqfsjt4Qkm85MxmX7GsWfZEzppqz
uc/q0Vhqlo8E1eP56Sh7e/revh7N2m376ioI3drJyrgJCpTs3PpCOZk5V40ppmOHHIaTKBWG
O3kQ4QH/ilGXiDBIqbjzsNgAqAJTVxZ/3Hx/XYHs//r8tt9smRMSX1vldhDCO+7oJzz0afwd
qJNognaLVHo9shV0S/VQG31p7+BFJCsL+XQ915UqJPfkYH973u2tM1rToT4frMGVmFiiURY8
56QNUd6l+MgoqO5oy8BMTkO/CLKoJ0lHU9YTm+z2/PNVE0RoP4gDdBJovzKxvC+C8hJzV90g
FuvgKL6Y7AQjWBTCsTAJc4lnaNcoIu1iRq+x6kFMeEv7usdwY5Bd9dtju83DdrV/A1Vz/Xe7
/gl6KwkjyMMas1XFyrDz9cMaCu/+xBJA1oDE/+mlfertFtphhc/Sl51hSFr+Jh9ffv3gltZq
Dpk8r7xH0cWGf766sMxHeRYKeed2hzc26ZphD+LTl2XFExsn6W/MoM5/Msoz8JFlIRvlzbO9
qEIFBTDrchLD4Y75AMiEmCDGaZyF+BYzZgyNLQ9UkMuQDayCtZeqJJkTK8WANtrR4MwsH2Il
g7iJc5WCI6UCtI1nUQ4YpEFQkYARWyDr/jVQ9AIjgcVV3Vjnd3DqKHYA6JOlsJxMEcDejSZ3
l0xRjRm56q5JhFzCsjtAMYlHmr6wTtzA/kUTIcWTXnYfCMjTpJ2ETj4cPvRNhj6gviEThCMt
sTaTgnrCBO+jRShGebmuUMdpO0CJr9aCs7VYntiBXIE5+ttvCHZ/N7eXFx5MxXTasZcdJhYX
/Cfu8EJy3s8BWc1h6zD14r1pbr916EnwF1NoZKkOg29m32KyfQhiAogTFoMCIQ8/Y+FKxiMn
XZkHMXADOMiFlDTjD5p1YT/TsFIN8jkDwnWiV8NNokg9qYtkykJOD1eTLhzxSxlr5/rEeo8e
UdDnRCh/9jyyQ6z7GlTuJqSd5nJ4dptrB28jMzUhKsszg2hSa1iIDeiwVE2RBHZqEForb3+s
3h73mCdyv3l4e37bHT1pE/LqtV3BufHflrz1CQV1npq0C7K48DDQBjrKQCT4evyZMB2DL1F5
VaV55kTphrr+mTaNuSBNm0SQe12IEQkIIynO6iWdJlHE/f0QDtzYwQhmrUyiLAC1QC6YfpSz
RNv1SQcK+BTlAvM2KdeAfyKJKgc1n7rSg+RbUwn71q68RgGUiwFKi1hnIBs49jQkKyiPQxXe
Cjq5tXdgP5ku3IRl7ndsFlV4yTWfhnTTqVGEUZFXDkxrLHDMg3x4QtYEutayGXsS9pKMJ6C4
fVFKTTlPwvjU72iHlKPI5BAySIuQOiQoru6Rtr/KSKcK+vK62e5/qlx190/t7sH3egY64AXT
SqiHUnu/wZdRius6jqqvZ/1H7uRvr4aeAhSCSY6KQCRlJlLtxOqmd7SHvZK/eWz/2G+eOsFx
p0jXGv5KxjPsBrVDUD3lYvsktN8shcxUfNb/kYVQwIfCsP+UinqRCJX/QdDU/XOAgkQIbcDq
Sogc2G3OSGUDxiC1VOgMtoPAbWFUR5wHELr87jmG4ZvEwppPNKd2EpybFERkDE0W/KPPtKZl
JBbIzXDT8wL77860mmpl0diszaoL2+9vDw/ozYu3u/3r21O73dsJdcVM3ztn71uZlPYWT+tg
imkt8d8DBZWbSNGlGAl9oB70oTIVKZajzrzFLCQMy//VzPMsr6WOaO5DQynBmKtKIbEPepdU
ln1dIRdWY+Gk97BGGS7Cr59/HVMs/LeCBYDvoVSiRFPNPA6G3H79EV5PSpGBQJ7FFR5E1opV
ODoETYyd4w6zgFQ4wQvh1BZDkUocGkic6jWcaaDr6jyeVn6pML4Z81xrgjqD/RrM1VzZIzSx
vEoJZrqTswmwFTLK6tQv0h/c7M7zZ5wlU7YJRctuyd/aZPZWwDBeO2OihmO8rOfL6jz1fb0k
dBn5eXRbRVnphNl3L2MDXgkTnNKMZfNlZplilH0mj8s8c7I26fr01xl5njqpJ6Nx3mrfdkMH
YTsBLufXbjAHmKSWEurRLJdlMAeZXFNFGWhi82gkw5Ku74ZTjAaZWtPEsqqFd3oMYPcbqlvI
KgRjlBV2HB6PBDfuhwwUY/enTtA/gx5nAAuB69u3SGrsMpdonwFeO+yAMOz0UzdOZFh9Xl/m
zu3cTl0A+qP8+WX38Sh5Xv98e9Hn1Hy1faDB90KlM4GNb106scB4q6UGJcFGKrmyxhypw9fP
pxWy+7qArlWwUnPujoVGNfM6wydqygX9sJqN96i+keOTnl1jSjDQi0VKyFSPhnpGSdyRLK9B
sgD5IsyJBqG4jR4GTVVyeEJ1zBzIA/dvKqs94RXO5mAu5VG8t4OHeB+mdnct4HwtoqhwzH7a
goge+YE5/mv3stmilx7G8/S2b3+18J92v/706dO/iXExN28DqJxvw3Na9K7GTX8BiR2XqgPH
dYARoLJfV9HtiLLZrfQuT9Dotu6q8PfrcqlxwCXzJYbNHerKsozSQ91Q4xlj65pEK4TQGnwL
l3F1U6W01CER87szX7B3qlpG4+l7hiGxWlm/pqYHqjKq2/9jZXj6g7yeJmI2knwwWICERO0l
SpDH0Lo6K6MohP2gjY3uJC30UTcYP3Dz/dQH/P1qvzrCk32NdnIrb4ma35gaLDt+70qgxjxw
4DOry2wxnw9ZHcYgaYFAiWZxWQ/37Cx2MdJju3OBhIkAEVWo6xDaLxrUnLxBvyR10AJ5g2kQ
DiwXJBlbCIRERlNSE7m9jYm+4MBUilzPlk+OKd58aqvN6LocvUCmuq2idvFJwkCZpOI8pNNo
T4S3ra87tU0yCpvZTQLEs+CuyjlBXZ34vfaoBiAdeaDH6lcTWZrwDtR19J04q11XoIBNqi6f
wgSjG8UhwXtpal6REuS/rHKlkqArqGshh5WqO+iypxHgCLfWneFZBSYeZXLaP23gpOMWo2ra
7H//pcVIyORueFOHgWKaVBImgbc6jeXmAFmQhujyUtqIB0UfIDE7akoU1GTM3sfW6+ibylpK
g8u7k2Z8P9G7kVP+wHYmjpqfqna3R1aLAkSACZhWDy0VFRY1L70anoQWolx22SSc+/BFypPx
11OnamGNV86HsysxrW/9kAy/CHKSDK6TfEHeBXC3gmyXCtLzDAzWPboZ8Yvo/LVs5nnVMK4k
UAM619VgXdEg9mMd/DBeULY2Hv4POpI4NRZlAQA=

--k1lZvvs/B4yU6o8G--
