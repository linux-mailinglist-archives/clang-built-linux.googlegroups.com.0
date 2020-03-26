Return-Path: <clang-built-linux+bncBD26TVH6RINBBG7M57ZQKGQEOI2BZ4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6582D1934F4
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:23:57 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id w189sf4414614yba.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 17:23:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585182236; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y/yWpAYWbj8Q2f6WC2Fa3x+DDLkZRYKZxUNcdbJ0j9s2NyJeFtvL91UCvPmGsMlbQ2
         2YrV+R8wbnqDpnl8F8uU2SXtM3POsmQ74Mn/jGifamLVQrb+Q72665+W8eBgGbuykAOY
         Cl+GnsINIbf3IoMaauPc0XQ36NjbgyIM92nCFn2R8WXruU7wdO3rGe1jQ7K+AcbqvcpW
         6hULz1izOCdT+WRYNfsNls5GlqXUGcQJ514T8BiYfEH6C1FkQNED37rJ66OFSi4uyXng
         amo1DaZbGkRA+wyefrMv0LkCs5R6xcXm+B52HFiuTXEhnTRSn0vaHSkGKXSei9RvndUG
         gyXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=ENnO/jsn2oeimvONS3CJx4Wk67B0WJGRSdLEtomXhRg=;
        b=tktbyRRfQoXo3lS9nwbGeNM0V/YxcWFhv+i9fWRsUa8KnC1S/7L6qicGBJBfM2u0r1
         VSU9LRWSFX68G84y+Dqsu3wJGb/ZicwtC8qi048cYN5DjNy66iS2Vl1f16beA+KtS/W/
         tovvvs4TLCBGTKJ7g2ZLaK3DbM7izCvhnPX4Ypd60UqW55Rx9NOBQHLUC7vPCU/NiUBe
         kDseUxGVZH0oa2cEcugcJBlMS/jgUN3LcsSipXzyDs+rlnzIaUIJIr5o3nj2eSeAoQwK
         Xl8nLJ3NVUkNfo3bVIsr3x0xh7hqVZm8PPbC/mrFCXjMlxsRmiAaFhKhoKPmqfG+1756
         dK/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ENnO/jsn2oeimvONS3CJx4Wk67B0WJGRSdLEtomXhRg=;
        b=gvk96nmus6ksCLyEN48If15qfZG/gBcBoiQ2zrvWuqejZqk60rKXjp0USj03Wb4lRo
         PzM4WSrD/chCVODXOH410/vRLlfGzigrHqoadksOwCzigNGKkyd57uNN0I5rXaU3NgFs
         ojt3LnFxZ5uutdcQVxa7nk3jYJjQ6GlLWMSbx/kvKDfQgelaBvCsbjZlWDqIdIHc2ZLZ
         5hYxrBCO/sumgnOvhWrDUZuJ4NRmnE7v78Qpnxka9Fkn61QE64lu6JZ3N+gbjuudwCum
         8QYoBMq3LzbDtsy1kHyDnevQ2SjVujT3bkdIKgaHRpmEabecZlU/rsEtXJKYCWfPwQsg
         OmgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ENnO/jsn2oeimvONS3CJx4Wk67B0WJGRSdLEtomXhRg=;
        b=pvvG3lGnRSoWpchwn/BWOOMbsMIqO54pizTW63jFCvfp8w1N/l/nPX6MoCJi/Jv/wV
         Wl44ixP+GdVPSl03pZL4OocWVSQ0eIyZBjbFbNgx5JeNpf9+ccEHd9BpJqN5Ox4QPhFy
         gajhqhjNpRcoeRinbed9oGWvChvi/YIKTNS92B/Zpn1MSeLjZiFplmyI4P7522uTtXs7
         b9x3gJ6WtJQOAl5K7iN+55NroSszaCVpOnxtBOmziovNvDe6iYOmcWtecs6tMSjuJQsl
         2tExTbaoPbZPU0iMpem3k0bQqWLh+QIwPNc4Y4v+nTLnUvDefwjGZsF4U7RQLfrMEqB+
         mmPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2vTBgPV1r+xUlv29FQHzjgR1kkxopZlWl1ZsGps+73oX+5DASn
	Q908ZcdBYSt0jh7rfVBnLaw=
X-Google-Smtp-Source: ADFU+vsKL10BIcRjk7kn8ghzSTPtTAOPXYkzxucjWubQTMmdaYO4DK1Nni3x2ftKS6cLsvzVYXSWoA==
X-Received: by 2002:a5b:48e:: with SMTP id n14mr10343304ybp.462.1585182235891;
        Wed, 25 Mar 2020 17:23:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa0c:: with SMTP id s12ls1486678ybi.6.gmail; Wed, 25 Mar
 2020 17:23:55 -0700 (PDT)
X-Received: by 2002:a25:1e8a:: with SMTP id e132mr9806708ybe.425.1585182235474;
        Wed, 25 Mar 2020 17:23:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585182235; cv=none;
        d=google.com; s=arc-20160816;
        b=LRV6zj/Py1tI0ThdbYM1LWML/prYljll+n5PqMat0FzsWG4ghEP8SbZX8HBt4hKa+I
         oaCLI8DQXKLpiFbnJL0jkm4Shxi9GUT5uDKNWux/z1uKbYQfFQ7wpdjOQjzeV+98ST0y
         wDGxRTukTKUSi/bHGBcTjOax3vaeD2zC3TGcbm0woeD2w30IVsdrotppUu/KE1jYrAoY
         j+Aa0A+f28vsbZDHjytG6ljZIqPfVe0sKVn8I+TuyJWuWhhoKqz/7E2QubUy34L6PvXG
         UQDBizChpq/as7k2rEZcEOTbHXAAUpr0pt8RNFWSaS60KaayLAm1cioqek84rbUZbSeU
         kvNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=83/HIFgmM0tXGQS3DGS40kqM/dt1ITlFJ/N0GswsMFE=;
        b=vrxyWE4wthbYxLAIJlOQg3p3QgN3ctoLkx9ALw+bvy2LsjXMS7M27H59KxC4g/j/1f
         6TVtVEUBDLM1+6zb41SWMetCPIjkNCl96SwlNW9zq1bN9LB64V61m9zAm+ZRdyWWoR8E
         P3A9jN5S3Kt7quaQxqxOMDRu3/qPqmCg4ns28ZxBzLutiuV9I30YCKF/z2DxstIqYSCO
         Mb9hxVPy6Auk+oyQH7y4uBPxMJ8acBH96uIJNk9mJUUAsI5wtlydHEnMKAPOCIZiInHr
         6pNTIW2CSVyEcW7uAO8E+FLVWZp83LfZy5NiduHm+GjHxR0M2E93VlNUixTbcTzh5O+/
         F/Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id d72si42820ybh.5.2020.03.25.17.23.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 17:23:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: uCzCIJavdaPP0QAKwILV++NHYipweOgE+c2bLVsgiMOlGqrmt27QuU12bhxP+MmWvs0a26oAAm
 3EElQnBhzHBw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2020 17:23:54 -0700
IronPort-SDR: /7qTxEem+Tx/MbAwzTO31FNVi/C2CjwwSocVtRs6jnbCsQ81aVRdjxitcoXXs0axtdHKs0IqSI
 MydckWS7qShw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,306,1580803200"; 
   d="scan'208";a="420503114"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
  by orsmga005.jf.intel.com with ESMTP; 25 Mar 2020 17:23:49 -0700
Subject: Re: [kbuild-all] Re: [linux-next:master 7819/11710]
 security/integrity/ima/ima_crypto.c:514:5: warning: stack frame size of 1152
 bytes in function 'ima_calc_field_array_hash'
To: Nick Desaulniers <ndesaulniers@google.com>,
 kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Rob Herring <robh@kernel.org>, David Gibson <david@gibson.dropbear.id.au>
References: <202003260212.EDh6YemF%lkp@intel.com>
 <CAKwvOdnQY-w0mad2=D936i7BYOshH5Heo+naE4uC9MrEPC6G3w@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <a7fdfba0-dd65-179a-60d9-b87b61a209cb@intel.com>
Date: Thu, 26 Mar 2020 08:23:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnQY-w0mad2=D936i7BYOshH5Heo+naE4uC9MrEPC6G3w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
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



On 3/26/20 3:08 AM, Nick Desaulniers wrote:
> On Wed, Mar 25, 2020 at 11:37 AM kbuild test robot <lkp@intel.com> wrote:
>> Hi Dirk,
>>
>> First bad commit (maybe != root cause):
>>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>> head:   bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6
>> commit: 35595372d95c0d10784bce1aec8cc144a39eb66d [7819/11710] Remove redundant YYLOC global declaration
>> config: arm-allyesconfig (attached as .config)
>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2093fdd429d52348e08969180ac6b1e705fc4ff6)
>> reproduce:
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          git checkout 35595372d95c0d10784bce1aec8cc144a39eb66d
>>          # save the attached .config to linux build tree
>>          COMPILER=clang make.cross ARCH=arm
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
> Please ignore, these warnings and the identified commit are unrelated;
> we have a few -Wframe-larger-than= warnings to clean up for 32b arm.
> I have a tool that parses debug info to find these:
> https://github.com/ClangBuiltLinux/frame-larger-than

Hi Nick,

Thanks a lot, we'll blacklist such warnings.

Best Regards,
Rong Chen


>
>>>> security/integrity/ima/ima_crypto.c:514:5: warning: stack frame size of 1152 bytes in function 'ima_calc_field_array_hash' [-Wframe-larger-than=]
>>     int ima_calc_field_array_hash(struct ima_field_data *field_data,
>>         ^
>>     1 warning generated.
>> --
>>>> sound/soc/codecs/cros_ec_codec.c:757:12: warning: stack frame size of 1152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-than=]
>>     static int wov_hotword_model_put(struct snd_kcontrol *kcontrol,
>>                ^
>>     1 warning generated.
>> --
>>>> drivers/staging/exfat/exfat_super.c:2072:12: warning: stack frame size of 1576 bytes in function 'exfat_readdir' [-Wframe-larger-than=]
>>     static int exfat_readdir(struct file *filp, struct dir_context *ctx)
>>                ^
>>     1 warning generated.
>> --
>>>> drivers/crypto/inside-secure/safexcel_cipher.c:404:12: warning: stack frame size of 1128 bytes in function 'safexcel_aead_setkey' [-Wframe-larger-than=]
>>     static int safexcel_aead_setkey(struct crypto_aead *ctfm, const u8 *key,
>>                ^
>>     1 warning generated.
>>
>> vim +/ima_calc_field_array_hash +514 security/integrity/ima/ima_crypto.c
>>
>> 3323eec921efd81 Mimi Zohar      2009-02-04  513
>> b6f8f16f41d9286 Roberto Sassu   2013-11-08 @514  int ima_calc_field_array_hash(struct ima_field_data *field_data,
>> b6f8f16f41d9286 Roberto Sassu   2013-11-08  515                               struct ima_template_desc *desc, int num_fields,
>> a71dc65d30a4724 Roberto Sassu   2013-06-07  516                               struct ima_digest_data *hash)
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  517  {
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  518         struct crypto_shash *tfm;
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  519         int rc;
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  520
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  521         tfm = ima_alloc_tfm(hash->algo);
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  522         if (IS_ERR(tfm))
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  523                 return PTR_ERR(tfm);
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  524
>> b6f8f16f41d9286 Roberto Sassu   2013-11-08  525         rc = ima_calc_field_array_hash_tfm(field_data, desc, num_fields,
>> b6f8f16f41d9286 Roberto Sassu   2013-11-08  526                                            hash, tfm);
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  527
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  528         ima_free_tfm(tfm);
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  529
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  530         return rc;
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  531  }
>> ea593993d361748 Dmitry Kasatkin 2013-06-07  532
>>
>> :::::: The code at line 514 was first introduced by commit
>> :::::: b6f8f16f41d92861621b043389ef49de1c52d613 ima: do not include field length in template digest calc for ima template
>>
>> :::::: TO: Roberto Sassu <roberto.sassu@polito.it>
>> :::::: CC: Mimi Zohar <zohar@linux.vnet.ibm.com>
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003260212.EDh6YemF%25lkp%40intel.com.
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a7fdfba0-dd65-179a-60d9-b87b61a209cb%40intel.com.
