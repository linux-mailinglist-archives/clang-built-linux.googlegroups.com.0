Return-Path: <clang-built-linux+bncBD26TVH6RINBBQGUTCCQMGQEEZJ5ZLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id A73AB38A0BD
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 11:22:09 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id 1-20020aed31010000b029019d1c685840sf11850269qtg.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 02:22:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621502528; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tzrwo5JvyIfNsB6rcF8z2H1Af73kuNhtORv/z9+pCeHJXdJFcmUg0MNZFVTD8Dcvt/
         eTnQo550Ylr4h4wLbtVMeeAhYizGZxcZJ1lU+kNa6Tjg+mC9ovHY99kdIBKfSMT3CP4t
         FiKLHsIvu173Y9Fj7OvNYzruy7If4onkMKTgpVvYQYWNPof7tW0g1xmPch2eZyd8CRC+
         +BANoPV8fpH4362Vy5siHrAEZR3+C4P4g/6jq6M0Qm3z0qcvUwCfqPCMqE62AfcT8JdZ
         S/Sd5K47UUoMRsjyKXSdCYS2k+Me2Eu9pndKqUxBPg1aIa8vgPIYbN717ZlYv+I0eGol
         o2tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=qi+N+AnzSTjwghd8ZxSPAu03k9H9wqH+izj1sDEmKj4=;
        b=A+zYKgFA7rknULj8LckwuGOHdpyzOj/be0fxt3hGlVUhBASIcM5Op2pHTlgeRXRY1/
         k+0wgB9fswx5VKiC4iL6M66z/0aSqHpxL584VuKOVmXYcFIhNLzZMegpepacBPtp695f
         MO3L3If36thkQFYqcPaLmXgR2UAhkWd4vzZRidA9YG4iUpNwtgFCPkht4dZ0NMDAdp2E
         lxKQ4qSCbL7AXWHQbbiP4AwduomxUeWHojtwQAzXO8MAB3tYT+FHia93OMqucQYB92Wh
         jx8qK4bH5UokrnUv7Iq6aMIdFqWKROuaDNkGgzV0tFZyuKPxXeWCzCFTPxtvMsG11ZkI
         yJPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qi+N+AnzSTjwghd8ZxSPAu03k9H9wqH+izj1sDEmKj4=;
        b=lv3c0kPOTIoeR+efH11eBuwEfl3qrUNmB+bK0688evXicyzB82/sI5FqFXMiEEFiKZ
         as/ItuI3DywYdRF9nSkrXTeqbte1sSJcwxp3PiUsiAdttcFr/gHeXZ9dlpM453zJxBxE
         h+ZBh6b0BWH6AGn0Mq+lV4Qoxf83BVNKZgmAp2uUUY/6lzCyRu9Pv/GqLcadTjAUSDrM
         wZSQic3O+KtjUpVsZefwTxH2a8O1I0uKPUwTMhKIHkOpruRCDZTBykok7lD2xKlMPOcd
         a7sHLcKuZj4Vqib5KTU5/KQ2+SMeFs+G3T6QEXsNPG1VTfFNWQHvZ8LhaDXTDSM6Uopg
         sKDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qi+N+AnzSTjwghd8ZxSPAu03k9H9wqH+izj1sDEmKj4=;
        b=uaowIUWR1gxaPFaZGzReoarc0Eu60arqfhtDuaq6kECt5SnbiyfSxK/0E/ci720A0t
         1K7rtDeGzE+VlHdpnJ4JHqGl0XbF1ZyvUeapIN1moBhVuqZe6qZ7WDr2HnuC7XHyU6zv
         +d/Rv7jIp1r+yC86dnYRubKGbGuapGe+ZpY+VVYzEXNZrbNJr6O6oZUFdr0hTVikxIWS
         WyC2OI5bIm0xvXjgzo+UsNkIbVt2BCevgssakNRUDK+FcuRCnc2EXICh2R2uW8tQ2fs0
         pWKO/b6mc13lavPQr6G+wRFbTJaiBGxavxBCfHKoKq8+Uf6ywLdEtIMvpLZbBFFRLR5M
         7K8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yEqriMpYeLefmsEbtRXv9kBbkowfHE3uZIwYfFXj/kZ+tjaa2
	Orjutg2Vb9fYsEudK8wqs9o=
X-Google-Smtp-Source: ABdhPJyjWZ9pnEfswwe9f+vKGT2Y52+EGH6/h/6I2hm3GG1idCfB+/igdujNzGsr2oQGBElQkb7E/A==
X-Received: by 2002:a05:6214:18d:: with SMTP id q13mr4340496qvr.60.1621502528752;
        Thu, 20 May 2021 02:22:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:544a:: with SMTP id d10ls1127208qtq.9.gmail; Thu, 20 May
 2021 02:22:08 -0700 (PDT)
X-Received: by 2002:ac8:5a44:: with SMTP id o4mr3849028qta.189.1621502528316;
        Thu, 20 May 2021 02:22:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621502528; cv=none;
        d=google.com; s=arc-20160816;
        b=xBBah8XDcY/JyNqTitOOJHghIZalCtKtlZHmN3bxEve9mbp+ae+93wXWMbfu58oT2X
         SZuipC0EFP0HSYNgvf7DxWQusmbR5Fe8x7UTWP0v5yt0SiHBU3JlQSA5+PtKmsE3Tfty
         SbpElu6lq81gvWACYqMuhjDnWiptPLfwpdoaepReWhyaDNrfoG3cqauwQIB5ABwrzmLG
         EFBJPFxvKOhZMWv5Y9Qhntpa0DQSKrPb2leqjJEpUVvyyMi7pLESm6+5p3xpb4gRASe0
         vVDwN/kR1OL12ex+UI67vn/BcN1g5tcTQszVntbvB7hAvwqQlJfeAoOhGGKTcxVViCHF
         9LFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=yKA4CQmZTxVgLl2RHevIbE06kZFcPLNsrxMp+nTrA1Y=;
        b=Fj30DEln93PaeSaRvv6OpGjaEcWQFra+5bDr49AU6SjUks8EApDDhOC9nCH7EQtRJ1
         xWprMoNTAEZMiPWvZTH0D5cNn1WYwrhNw5X3E1yOx6FCRgHwXEsgG7Ylh+WncTHiwzxx
         bV78psk+H3EBJ7rckGitHKBj+QXv9F0Tgc5HpjiUGwNUF8IUtrdNuCXxPwmPxzCH5Erk
         Dq6HW9owndiJLc5r5CaQ3LaaBgekhcZtbOSlFVbiG0tQbkAoTJqCAWx6xZYYdQhUzdQu
         8/xX+6YYpmuimL0CI43XzscJH2jlRAWd+wblA8yhFP/04JcDkGNF1aJE3h+c1ScooUz/
         MzMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id o23si143484qka.0.2021.05.20.02.22.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 May 2021 02:22:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: 1Lythz7/hWDFjtJvp2QQIJpGubf5MYaNxZEuGN8cGR8PZj0IbHL+HE01JfpJ18VvQRm7bP4x5Q
 cwJmb9Ro827w==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="180788344"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="180788344"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 02:22:06 -0700
IronPort-SDR: b3gYjHzEmJcLRrjnE+7DTnyg44ostpn7n89140PCbkOsvhZNw7Vl0LUETMKBvKjvFqxOscy//i
 ibq/uT9sgu/w==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="473922456"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 02:22:01 -0700
Subject: Re: [linux-stable-rc:linux-5.10.y 3189/5262]
 drivers/usb/dwc2/hcd.c:3835:6: warning: stack frame size of 1032 bytes in
 function 'dwc2_hcd_dump_state'
To: Arnd Bergmann <arnd@arndb.de>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202105200357.eXI65Gfu-lkp@intel.com>
 <CAK8P3a2j61ouv8h-rWj7zPzjZ8Ok7GtQpyT5NaiYGxwxWHfwAw@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <e65bc9b7-13ef-0e83-1ec5-0287d5875d2c@intel.com>
Date: Thu, 20 May 2021 17:20:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2j61ouv8h-rWj7zPzjZ8Ok7GtQpyT5NaiYGxwxWHfwAw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as
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



On 5/20/21 4:28 AM, Arnd Bergmann wrote:
> On Wed, May 19, 2021 at 9:48 PM kernel test robot <lkp@intel.com> wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.10.y
>> head:   689e89aee55c565fe90fcdf8a7e53f2f976c5946
>> commit: 5f2f616343b1d62d26f24316fbfc107ecf0983a9 [3189/5262] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
>> config: mips-randconfig-r015-20210519 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8e93d10633d751a3e9169bf9fa68326925ffa097)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install mips cross compiling tool for clang build
>>          # apt-get install binutils-mips-linux-gnu
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=5f2f616343b1d62d26f24316fbfc107ecf0983a9
>>          git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>>          git fetch --no-tags linux-stable-rc linux-5.10.y
>>          git checkout 5f2f616343b1d62d26f24316fbfc107ecf0983a9
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
> I analyzed another bug like this today, and I think this is again just
> CONFIG_UBSAN_ALIGNMENT=y
> on mips/clang causing tons of these warnings.
>
> I don't think this should be considered a regression, but we may want
> to change either the
> kernel or the 0day bot from test building this combination of options.
>
>         Arnd
>

Hi Arnd,

We have disabled CONFIG_UBSAN_ALIGNMENT for mips/clang in our kconfigs
to avoid reporting such warnings again.

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e65bc9b7-13ef-0e83-1ec5-0287d5875d2c%40intel.com.
