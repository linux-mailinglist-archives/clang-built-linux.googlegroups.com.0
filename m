Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIELXPZAKGQERHWP4GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACB716653D
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 18:45:06 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id d16sf2537598otq.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 09:45:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582220705; cv=pass;
        d=google.com; s=arc-20160816;
        b=LD+VhGp0y6SIRvePTz+Lgq1YpqdQjWypZXPLKYEx/E/7H7uAbmUj6rc4FB4EVL13A3
         n43Saxk9W9c5Jz3EKVbhUB2Isi6EHY1Jadfl9c7JfmeaLzvo3M7QbtpZ4ktlElC6BVD3
         UwlwoBMM452/CDtaKEzEBO91ABA3yU/wWrXhMPFT0rrlkZ8OXVsUNDw+hQB01elI5s2B
         WBE5bTlOjpUV4UMYuft7czQIQc+fdG7Et7XljQApp1b9QdIQfBhGRVpiV7pDtUXdzr4H
         /gAZ531e1fiox7KExyaUkS1pMcj/sZ6PQjvfTJgodGh/D6encMVHSoExsEWd/gUGm+uM
         DK5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=h/OjFnHBi1BzDLay3bKkcj9Nlny6u5YGigsx2+urDtw=;
        b=eyPXZwabqcMcHJ9nG7/Sh9nL7LYPK6oPEow16ejaQdn8cf3FH7SmX3rsD0avrbJPrg
         P45cfh/k9Ee26pkaUjciK+M4YedJx4Bq1ItUa6Ng2D5CLR9xZjqe7fgYFZkUoGXBeSZE
         PYwfoGMum38Yxv8vgxnBypn5DtgBZQ+7wFlhuSaMrCdpq9I+TJo0wIoBpglqdtKVWlKw
         fvMByQMZuZZTkxo8tbSr+HetsVDQatWS+OUHuduFOdOGLJNtixH1VeF5dtFHkejF0AOG
         knqwo6FOOHUlIE+fzTUryOyHcIYFF5SwYzcZvJOHjqiV4fmzBs2JM+E2ltc7qw7oH8et
         EQjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h/OjFnHBi1BzDLay3bKkcj9Nlny6u5YGigsx2+urDtw=;
        b=ndJfE/ZA8rif3nBELVq9yzZIveBQkPN0Aaqql3Nb1ZP3/MgzdnkTFc1W+DNxl/5B5E
         gZhmCWdPWyjdTvGIKpKQ1rtd10xX9eezt0m28x8EO7hRL3+sc5QH++fJGKPrjbVfvP2i
         ot1WMNTcumFTn0yj5sYMemarMKq8ElLF2nP3RaDfXA5nkFRrZxdoy+QJN3XAJJDpycZF
         qfza93dBl2fr9+aCW6mHR62NxbBhp1e3LTYHsLcs4XmVRogQkjhC21C9d8i3P5LNhxue
         EyvUlCJL6TWYIacBYlFvYFOP03QRoaZHyKehOAt5eoFYSpKpZ6FYBkMsRdqZE1D8Vt5j
         uE0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h/OjFnHBi1BzDLay3bKkcj9Nlny6u5YGigsx2+urDtw=;
        b=SxEr9oLAJl81LS86w0KGEDokSokDHcWF1dYojnXlkgDdzjOAbif4pfQoNJvRiOoZcm
         h2yWy3S1TXzv+JHzT/7ohOvej5AzQzdKOE8cwx1xwrfwMTE4orHGi8feRiagccaeZhyE
         XN5rs6+qXtx8aZC+frG3nN4M5EHqw1NQEIjTSgPC8c85nxvPQld/dMgIdeZVsTrKq7a0
         pQniSPGfucARMZC5pLTnpJHlSjE+ysBjRgn35I7DsKooWPKdea43PtLTat5RsmsHE85f
         lAqrJ25f5IG7elFV0Tk3z8bUz2IJDmKrZkxvhazKRa4Iz4v/VAMGJEfmo84UGLRLdGYI
         Xbjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXzPuJR1cdCNT/DQNi2cLJt1eiouzM58Nw/2Who0vSdEZqrPdXo
	u1XAccqgLauH0hl01b8KIO0=
X-Google-Smtp-Source: APXvYqwCALH0I3EJGqVChwCcW+2TmtCHM7rntk+tdWdpeVONJp1FCPT01ENmZHG4qCf9IV5BWluWKw==
X-Received: by 2002:a05:6830:1d7a:: with SMTP id l26mr23813812oti.138.1582220704905;
        Thu, 20 Feb 2020 09:45:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4a4:: with SMTP id l4ls692166otd.11.gmail; Thu, 20
 Feb 2020 09:45:04 -0800 (PST)
X-Received: by 2002:a9d:4c06:: with SMTP id l6mr25300788otf.161.1582220704433;
        Thu, 20 Feb 2020 09:45:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582220704; cv=none;
        d=google.com; s=arc-20160816;
        b=VBGDrSmkXNtjlut9NNRCBfovUWUxCce3+Zi9I5KwqX2e3IjWCVO4Jqt9NgdNl7Jy++
         LTKII90O/QBzTsEucU7YYbRqKT7kFmTZ0Qp+2n/yQ2s9T1U2FK3v5BwRln409++/VRb/
         kIrn+liHXeuj+Y2U7xgLuWBHzOTM9yyDjiQXMzyVpDLFXgN98PPlblPh3/1cSS2GPvSt
         AMj5OXgPN1q4m6QrMx1ZKMAuV54gmIQoTIuNY8YFrNSGo4Xk+oLRqxwDbLFu0SQiFdQm
         IBW7gpMDbYSs+njEJHZEMm5Wh5vgI797KY12IduacKrz9aaIKFJLAQV+ac7Gozy0AmC3
         FznQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=cCnhIkjRQRsJKdpf7qpUx+ltLWeeC142ZA2dP0NY+Xo=;
        b=i5Q4XQTtIm7bbnhX7xgPX0a+aV4rdOWqlMwtKfOaI/sNWe9NbUltn+MIjjU+k3THhY
         nvXgUBDlkhIr+k86mdn7RmsT29oI3z9WZb6jKdoleVZSlwLvyKlRWaAInm9HdsV1Kcrz
         M1ysp3Q67VPvTMgKbdepmxlTQHlvnDxj6uu8X6l9JXRM+bp+ktIdTRfjY+4CwW40SoSK
         IluDQoP9RjgH0HnxhRT9O5Bl619KqguefpJ1uj10LgR54bJH4hOjb0phRUU7QWHF8dLs
         eML4h0KA7It9xhBvBzXMrU8otfHO2KsT0hRYaTUrdLlVXPZnndcNvjCdoO2Q/NeCQLcz
         WUXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id 14si18663oty.3.2020.02.20.09.45.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Feb 2020 09:45:04 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Feb 2020 09:45:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,465,1574150400"; 
   d="gz'50?scan'50,208,50";a="315801816"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 20 Feb 2020 09:45:00 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1j4psi-000IOp-1d; Fri, 21 Feb 2020 01:45:00 +0800
Date: Fri, 21 Feb 2020 01:44:24 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 4/7] nvmem: increase the reference count of a gpio
 passed over config
Message-ID: <202002210137.v9raLCIr%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
In-Reply-To: <20200218094234.23896-5-brgl@bgdev.pl>
References: <20200218094234.23896-5-brgl@bgdev.pl>
TO: Bartosz Golaszewski <brgl@bgdev.pl>
CC: Linus Walleij <linus.walleij@linaro.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Khouloud Touil <ktouil@baylibre.com>, Geert Uytterhoeven <geert@linux-m68k.org>
CC: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>

Hi Bartosz,

I love your patch! Perhaps something to improve:

[auto build test WARNING on gpio/for-next]
[also build test WARNING on linus/master v5.6-rc2]
[cannot apply to next-20200220]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Bartosz-Golaszewski/nvmem-gpio-fix-resource-management/20200220-045651
base:   https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git for-next
config: x86_64-defconfig (attached as .config)
compiler: clang version 11.0.0 (git://gitmirror/llvm_project 9d37f5afac4a3b9194b9001bed84f58ca8bd6c02)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/nvmem/core.c:349:20: error: implicit declaration of function 'gpiod_ref' [-Werror,-Wimplicit-function-declaration]
                   nvmem->wp_gpio = gpiod_ref(config->wp_gpio);
                                    ^
   drivers/nvmem/core.c:349:20: note: did you mean 'gpiod_get'?
   include/linux/gpio/consumer.h:201:46: note: 'gpiod_get' declared here
   static inline struct gpio_desc *__must_check gpiod_get(struct device *dev,
                                                ^
>> drivers/nvmem/core.c:349:18: warning: incompatible integer to pointer conversion assigning to 'struct gpio_desc *' from 'int' [-Wint-conversion]
                   nvmem->wp_gpio = gpiod_ref(config->wp_gpio);
                                  ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning and 1 error generated.

vim +349 drivers/nvmem/core.c

   322	
   323	/**
   324	 * nvmem_register() - Register a nvmem device for given nvmem_config.
   325	 * Also creates an binary entry in /sys/bus/nvmem/devices/dev-name/nvmem
   326	 *
   327	 * @config: nvmem device configuration with which nvmem device is created.
   328	 *
   329	 * Return: Will be an ERR_PTR() on error or a valid pointer to nvmem_device
   330	 * on success.
   331	 */
   332	
   333	struct nvmem_device *nvmem_register(const struct nvmem_config *config)
   334	{
   335		struct nvmem_device *nvmem;
   336		int rval;
   337	
   338		if (!config->dev)
   339			return ERR_PTR(-EINVAL);
   340	
   341		nvmem = kzalloc(sizeof(*nvmem), GFP_KERNEL);
   342		if (!nvmem)
   343			return ERR_PTR(-ENOMEM);
   344	
   345		rval  = ida_simple_get(&nvmem_ida, 0, 0, GFP_KERNEL);
   346		if (rval < 0)
   347			goto err_free_nvmem;
   348		if (config->wp_gpio)
 > 349			nvmem->wp_gpio = gpiod_ref(config->wp_gpio);
   350		else
   351			nvmem->wp_gpio = gpiod_get_optional(config->dev, "wp",
   352							    GPIOD_OUT_HIGH);
   353		if (IS_ERR(nvmem->wp_gpio))
   354			goto err_ida_remove;
   355	
   356	
   357		kref_init(&nvmem->refcnt);
   358		INIT_LIST_HEAD(&nvmem->cells);
   359	
   360		nvmem->id = rval;
   361		nvmem->owner = config->owner;
   362		if (!nvmem->owner && config->dev->driver)
   363			nvmem->owner = config->dev->driver->owner;
   364		nvmem->stride = config->stride ?: 1;
   365		nvmem->word_size = config->word_size ?: 1;
   366		nvmem->size = config->size;
   367		nvmem->dev.type = &nvmem_provider_type;
   368		nvmem->dev.bus = &nvmem_bus_type;
   369		nvmem->dev.parent = config->dev;
   370		nvmem->priv = config->priv;
   371		nvmem->type = config->type;
   372		nvmem->reg_read = config->reg_read;
   373		nvmem->reg_write = config->reg_write;
   374		if (!config->no_of_node)
   375			nvmem->dev.of_node = config->dev->of_node;
   376	
   377		if (config->id == -1 && config->name) {
   378			dev_set_name(&nvmem->dev, "%s", config->name);
   379		} else {
   380			dev_set_name(&nvmem->dev, "%s%d",
   381				     config->name ? : "nvmem",
   382				     config->name ? config->id : nvmem->id);
   383		}
   384	
   385		nvmem->read_only = device_property_present(config->dev, "read-only") ||
   386				   config->read_only || !nvmem->reg_write;
   387	
   388		nvmem->dev.groups = nvmem_sysfs_get_groups(nvmem, config);
   389	
   390		device_initialize(&nvmem->dev);
   391	
   392		dev_dbg(&nvmem->dev, "Registering nvmem device %s\n", config->name);
   393	
   394		rval = device_add(&nvmem->dev);
   395		if (rval)
   396			goto err_put_device;
   397	
   398		if (config->compat) {
   399			rval = nvmem_sysfs_setup_compat(nvmem, config);
   400			if (rval)
   401				goto err_device_del;
   402		}
   403	
   404		if (config->cells) {
   405			rval = nvmem_add_cells(nvmem, config->cells, config->ncells);
   406			if (rval)
   407				goto err_teardown_compat;
   408		}
   409	
   410		rval = nvmem_add_cells_from_table(nvmem);
   411		if (rval)
   412			goto err_remove_cells;
   413	
   414		rval = nvmem_add_cells_from_of(nvmem);
   415		if (rval)
   416			goto err_remove_cells;
   417	
   418		blocking_notifier_call_chain(&nvmem_notifier, NVMEM_ADD, nvmem);
   419	
   420		return nvmem;
   421	
   422	err_remove_cells:
   423		nvmem_device_remove_all_cells(nvmem);
   424	err_teardown_compat:
   425		if (config->compat)
   426			nvmem_sysfs_remove_compat(nvmem, config);
   427	err_device_del:
   428		device_del(&nvmem->dev);
   429	err_put_device:
   430		put_device(&nvmem->dev);
   431	err_ida_remove:
   432		ida_simple_remove(&nvmem_ida, nvmem->id);
   433	err_free_nvmem:
   434		kfree(nvmem);
   435	
   436		return ERR_PTR(rval);
   437	}
   438	EXPORT_SYMBOL_GPL(nvmem_register);
   439	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002210137.v9raLCIr%25lkp%40intel.com.

--6c2NcOVqGQ03X4Wi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AGiHgZ3mAQA=

--6c2NcOVqGQ03X4Wi--
