Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNHI5HWQKGQEDIK3AVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DC1EAA6C
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 06:42:13 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id y200sf3556250ywg.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 22:42:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572500533; cv=pass;
        d=google.com; s=arc-20160816;
        b=cptXuy8GbqBZ2/X+ugyBL1l7lAOJGvpbWEDo8wsF2mbFHSmMqhsJrEVQdo4WoYVdda
         ipHK4sT8pefHf7SB7V8eA+PDdims+ei66wNpjbEDmoXlqn9YhdrRbIB/wnF6tI/ryWig
         FHrgfDPAF7OzM3ax0MHHHJZifkJ/wqrMhOq1kHBNXWWpn4KEAYdadLP0AuwJJmx1n7B3
         NeYEP+rBIc7YA1Vl3HA8le/BzMgCC+5UOsoYOgjwePFg7uOkqWUYjdUFNoAYgyM8TviC
         UUstyCjsesZFnJPnLafUGUDAH0vCjxhKM6PhqxnTVFgwi197A9UB7R4igkWDKdvuO7lV
         cvyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=xvk6vEi7VCizNIjNfygB8O1HK9cHC7fGvXd5qSX6EwM=;
        b=v1Nwi2ceEnlyXFfS9085hlEEN743nijjImoIf1F7dLqagryv5l6YL6YCj3hQdKCozM
         xtpBAjvS+hCG4OHhVwiJixRhRl1VAOqfPplYFoj0czA96z+e9YASJXOKATWgKDTYs+fa
         4Iy/H6Y1JunLSMxRbAmL4T8lvsbpXkgar8dxkqCQV187yEgzBQlQdvQtltWyzhzFFVDS
         557PmxM31vrJz25Ita6Ubw/iQYGvY8vs4jg0nqWncT8yXHSzTjhpNEybMLOdNdKT7GCC
         i7vOQVv0sfJ+SensjktYupbMYbT1reoHZX961KpL6YZyl0vFTPtDhU23CzZsmlceCy+K
         3mOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eXNFG2SX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xvk6vEi7VCizNIjNfygB8O1HK9cHC7fGvXd5qSX6EwM=;
        b=oCySxoPYxMJiYaOMBOyqSAKS1mxpxjDUJGCck8wgvMQiuzTwugl3W502oKSOjFeW9/
         O4lA4nmNGPa6Lrqoj5jrf0JB2MiC/wo/JbRIGoUXukTYawNNWv6MHJutGDktk9rQ6GrI
         4JB0tMBgcS3JvfPqVzui2KPNr4+0Kk49VAxHI5CJdgRHsh1SX+oC8EPN1iFms3tNQkG0
         zFdAGabIdBXTadJh+M0WyCImDXOBizg2mYfc7X7nboK8JiDaS6epRbxtXhFLT21BtoFK
         T9IWVOGNOQqFV6zGzY7/Ee7VHG+IP0pNWvdx1gJQx721X2gWAwFcB8KnGxaKkQDC60S3
         XULg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xvk6vEi7VCizNIjNfygB8O1HK9cHC7fGvXd5qSX6EwM=;
        b=ojGixxkcy9FQI2lhS1Hk9/BkNG7Hi+bXcgYwba9E8+tMkTZBPyEuXF2wKDvw6Ro4HG
         6yepYjB+DpKmQTB3oZ1jOHJFcyi8UuWtBQzVVabdxwB1z4+ZDvgbYL6YvBxmJAdKTNqi
         PR98JkgiNsBLiP+J6ttuc2Lq8P6HpW2JCYT1ZQtvGVFwk6eCbxFlWSm7MrxbTfwkQVJ8
         0w9k6X0ZaFqHkOFx7Kod9sIemRX4Aj76RXA6S2BXXzPE3hSawqhz6f7f5lwbk30+i3po
         xloChAzxIIgMcUPGsf+11yP1a0V4ayqTvT7BdOmEQMfc8ivuLQmBOUcJz36WamO4UCBr
         xX7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xvk6vEi7VCizNIjNfygB8O1HK9cHC7fGvXd5qSX6EwM=;
        b=WcZZZ9hNragvqnXhZ2XqASyTeO0HdXAkRYGqeRq8kDzGz4n9vgBQgZArn4eohXomnb
         D1h5ihYoBfns41tIGllV5jNJXUHE2VFYcQlAFinA187aijnIBDwzTsxcHqSZhKmvxqvI
         j0nwL8mV+ybc2cFaDZL10kBf/QLPi4jxlui2OLdO3j7E8RKPDFNtOcCl1hfS0O0mjrS9
         njlsqIBW4IxoFAMRmi7pfqdpF8n20u2rbOYonb8Xg/Cr2hZvZkoCth2Xm5rrH1Bmo7rA
         3EX5OO+NFbf8C5sKMTzTPo8YHWDeK15Q3e+II01wHcJVGM6p0ktjILwpqs9u9Pnhki/F
         WxWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXqXxqQSdnGIjvOoCmMVRuO2Wn5eOqB3EiPdULn0T+PJ5VViWFr
	j5lih0mh6UbkWvLASX8/2f0=
X-Google-Smtp-Source: APXvYqyivfT9V7ieZTtaTbfaBHVFRWo956Q+RtGImQag7Pq5dVmilghUW3fsBXKvIc0Cb7UBKjtSaw==
X-Received: by 2002:a81:db45:: with SMTP id b5mr2698352ywn.378.1572500532795;
        Wed, 30 Oct 2019 22:42:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:f686:: with SMTP id g128ls269410ywf.1.gmail; Wed, 30 Oct
 2019 22:42:12 -0700 (PDT)
X-Received: by 2002:a81:6305:: with SMTP id x5mr2729832ywb.312.1572500532279;
        Wed, 30 Oct 2019 22:42:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572500532; cv=none;
        d=google.com; s=arc-20160816;
        b=rXqVgSbVws9U9lzEjIKqA8UIGsk3qs+BfTN8/UOMeqUfQvPmNF9YQZtQ2lTEZ+TG0M
         rtWceM0U2mzKvmmlPX4bK2ZGjrv3uTik/6Q4lDFsdZ3QU/FA0MpVCS5e8VHWSjki8p/U
         ugkiP1aKIfl+yDPpw2B0tAl7aKuZFLExocBCEuIq9ZO64rDOjrZ8Q0yWIen5ssKjvSiw
         k9NLBPtX7o830RwyGxjG2HDvkps5G1a6EdyKNTVTN5Kk+DQqkQDbTVzESrEq7vgj2iK7
         smxVToPJrhvztXNxkN7UQj218qQcrjtw/bvDwx/QXnF7xXS/Y2hCMEDMhfUBDEg8sN4z
         XgHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NFOmH+X1zL15bEQ+0SP3D+wVm5m7cWoIjddeXOmNWis=;
        b=R8BuXhjiYKQG4VasXr4ZjhEV752s7ElGV0Wc2FUbrd0RmvZ8JRsCtrZ8mnHQVGiWqi
         3NY1rj/8DpYuBRyBa4skZeHHvCVnKW6dcg3QpShQvicvKulK+n2A0faK2Z4bmYNZPNzP
         1v8Pm3ko5OdAhQjYSzB9kQqPvNbtr2T4HhoJXIzZ2/dLV5Cc0UoWyvsCZWNnq+fdllDn
         XrAYeh6f2RvMV1nadpfDJfs/yGH+wvED1ZM30OFZslt6IrV3nFc42q6mvIdgyIMT1A2M
         iEaEvnKvQMemqMK9p5Q/gjjUKaUBdnru9x1A1/ruIUH9DTELmRqO9CL15eGUzkH7EfQZ
         6FsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eXNFG2SX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id j136si121191ybj.3.2019.10.30.22.42.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 22:42:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id 41so4294870oti.12
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 22:42:12 -0700 (PDT)
X-Received: by 2002:a9d:611c:: with SMTP id i28mr1000462otj.348.1572500531565;
        Wed, 30 Oct 2019 22:42:11 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id f9sm835784otq.52.2019.10.30.22.42.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 30 Oct 2019 22:42:10 -0700 (PDT)
Date: Wed, 30 Oct 2019 22:42:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jiada Wang <jiada_wang@mentor.com>
Cc: jikos@kernel.org, benjamin.tissoires@redhat.com, rydberg@bitmath.org,
	dmitry.torokhov@gmail.com, linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org, erosca@de.adit-jv.com,
	Andrew_Gabbasov@mentor.com, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 24/48] Input: atmel_mxt_ts - make bootloader interrupt
 driven
Message-ID: <20191031054209.GA44197@ubuntu-m2-xlarge-x86>
References: <20191029072010.8492-1-jiada_wang@mentor.com>
 <20191029072010.8492-25-jiada_wang@mentor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191029072010.8492-25-jiada_wang@mentor.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eXNFG2SX;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Jiada,

On Thu, Oct 31, 2019 at 01:26:23PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191029072010.8492-25-jiada_wang@mentor.com>
> References: <20191029072010.8492-25-jiada_wang@mentor.com>
> TO: Jiada Wang <jiada_wang@mentor.com>
> CC: jikos@kernel.org, benjamin.tissoires@redhat.com, rydberg@bitmath.org, dmitry.torokhov@gmail.com
> CC: linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, jiada_wang@mentor.com, erosca@de.adit-jv.com, Andrew_Gabbasov@mentor.com
> 
> Hi Jiada,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on input/next]
> [also build test WARNING on v5.4-rc5 next-20191030]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Jiada-Wang/atmel_mxt_ts-misc/20191031-032509
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/dtor/input.git next
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 6cb181f086a5bc69a97c1a01e9a36f8293dea7ed)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    drivers/input/touchscreen/atmel_mxt_ts.c:1190:2: error: implicit declaration of function 'dev_debug' [-Werror,-Wimplicit-function-declaration]
>            dev_debug(dev, "T92 long stroke LSTR=%d %d\n",
>            ^
>    drivers/input/touchscreen/atmel_mxt_ts.c:1200:2: error: implicit declaration of function 'dev_debug' [-Werror,-Wimplicit-function-declaration]
>            dev_debug(dev, "T93 report double tap %d\n", status);
>            ^
> >> drivers/input/touchscreen/atmel_mxt_ts.c:1402:36: warning: address of 'data->flash->work' will always evaluate to 'true' [-Wpointer-bool-conversion]
>                    if (data->flash && &data->flash->work)
>                                    ~~  ~~~~~~~~~~~~~^~~~

The 0day team has been running clang builds for us and this warning
popped up because of this commit. Presumably, you will need to spin
up a v5 because of the other error, mind addressing this warning
while you are at it? As it points out, the check should be unnecessary,
unless you meant to check for something else?

>    1 warning and 2 errors generated.
> 
> vim +1402 drivers/input/touchscreen/atmel_mxt_ts.c
> 
>   1394	
>   1395	static irqreturn_t mxt_interrupt(int irq, void *dev_id)
>   1396	{
>   1397		struct mxt_data *data = dev_id;
>   1398	
>   1399		if (data->in_bootloader) {
>   1400			complete(&data->chg_completion);
>   1401	
> > 1402			if (data->flash && &data->flash->work)
>   1403				cancel_delayed_work_sync(&data->flash->work);
>   1404	
>   1405			return IRQ_RETVAL(mxt_check_bootloader(data));
>   1406		}
>   1407	
>   1408		if (!data->object_table)
>   1409			return IRQ_HANDLED;
>   1410	
>   1411		if (data->T44_address) {
>   1412			return mxt_process_messages_t44(data);
>   1413		} else {
>   1414			return mxt_process_messages(data);
>   1415		}
>   1416	}
>   1417	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031054209.GA44197%40ubuntu-m2-xlarge-x86.
