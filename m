Return-Path: <clang-built-linux+bncBAABBJ56X72QKGQEFPFWTLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id D92C71C357D
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 11:23:52 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id k193sf5361112oih.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 02:23:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588584231; cv=pass;
        d=google.com; s=arc-20160816;
        b=arD3cHTZiwbhZjU466BSIgrVrAaHxP5iLYGb7vDz3BMsPJefMIatXjUf02bU1yto9Y
         Uc0mje4u68dCiOcBfjC796XUkGm4uW2A36kPphzjkIt6Z7flkReOaK+HqUyrWHfs99+3
         QTwUYfQcefRPEKQe8MpD60HMlVOHpyV/XWQdl6AqSEIKFMqySyx+RRDj43d5uPW+NAIM
         HFgfy8eIpwX0i5aJKmPnbt7eU+a/rHE+7+qAAn2hAUnpvVr1NBXAtIlb1UK0/sXhCsv0
         +nZsDoq9Dx/Smb3QXy9V/zQ3JI2bd4/4diDS9IAKy24CHZIanm0910Z2/VE9hd8wpguP
         /lIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=+mGZ0rvAOB+vj7K4ua7n7b871TLVlq6KgVqbGl7vYbA=;
        b=jysO5wGQr+FDhRmSZCpK3jEqJjnbcrufZfwhw4S16aW6oxWl3bQMisZqQVoHx1AxhJ
         IhddZa8M2hsegWek/61sLTEcTUqRbUY+9IkKIZlK+ZvaLuxMwUTLWDV7XIt8PoP1IMXF
         xUm0UHYBC/WQDkPbl206Uk9PaaXUFIK6LfSeUCMBjsaL/RZZBAMkzXeJLsoG71f1SnAA
         CF479LeQ5HViYf6oBQR1gvGdFvNxo5Yi+wo3p86uCZn1idktFRvT36UP5kDZLorjAa+I
         ekw4b5bWyHJystgFzPjuBE7/3bmw49/juUATZh0KUZw5SyXhDuz2P5z6w24aJM42W8m3
         oFHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=amadeuszx.slawinski@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+mGZ0rvAOB+vj7K4ua7n7b871TLVlq6KgVqbGl7vYbA=;
        b=X1zcQ37ta1N+Z70Z2lFajvvhm5VYMcbaSB6OTNlHjvv4p9YuBZzdYgzFnspV7m4Dje
         C1cQSByvHroWsNASO1DeEPWadmjehpHqPXGpB7Am3C7SUrK2I/46+hSFQreOze9pLDYf
         9jXHSZhhPBpkjw7U4+KJGkJv2JCmwKOoEfEoAOxII0HxIdPaQpqNP2pFVVGVB0aty0wc
         LcJ7GXe5C8WaNH96o7m7M60T0RnmwaaGP3Z5OAMFxxUM3SK/lV94IKNoiwDsRaogS0cC
         EqJVMTGgIQgowir9+kMiMmckvrDZazVqJ5b+miDZ6RCR6JX7x+zje1re4Y9TOjNAwgSx
         akPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+mGZ0rvAOB+vj7K4ua7n7b871TLVlq6KgVqbGl7vYbA=;
        b=onfq24nMQ3b+xBFJ4vT6ajpDnG9gxOr724ngwyEGqo7wv8dXfJEnBEM+ZUx50rnKxJ
         tNZVht2Qu6l7ZhDQz2QrXBzGSM/0r73aIeqU0QP830IqOn33f+liO7vrcZlprS5hl0yA
         gTNQmkudyMhz2U2d0N+cd3xBmiQqFBhg0N20EqeVSxchS83VyJ7f08XqUAq8R6Sv7w8Z
         ihSDdaeP0A//s0jQGC0jfeVLc6qJdERWAN3MffwOwTX2CS2QSaywg1vKBGbUFo9UzRNA
         SQTsXtphzCrNOoCXmH9rUBVMEflhRXW1253A8S2CHV/fkjmzisv2iufhn0KKj448wmCg
         JZrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaRlairiOXxX2RNuFFx+iWwCvvpgcCt8PeRJedCt1W1YL2BDt8p
	Sdm5ZrnuS2uBI/cUjgFcACk=
X-Google-Smtp-Source: APiQypKSpPnnqYKbnVsHCFmkFRogyyLzbqgvqQZIJxSqIfFWs3sBon1VAzS0vSkQS/tqOIASX1jRhg==
X-Received: by 2002:a9d:6093:: with SMTP id m19mr12919770otj.2.1588584231320;
        Mon, 04 May 2020 02:23:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d485:: with SMTP id l127ls2791927oig.9.gmail; Mon, 04
 May 2020 02:23:51 -0700 (PDT)
X-Received: by 2002:aca:4cc5:: with SMTP id z188mr8660612oia.56.1588584230983;
        Mon, 04 May 2020 02:23:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588584230; cv=none;
        d=google.com; s=arc-20160816;
        b=MiPB1bWZGTCFGDUe1I+12J3SPPpuO1u5up/xtl3CMzmN97YIC+kdziAr1oELr0qkqj
         P6CaDsMi4a4jlZo9PMupLjtZ+oH/iqoJPXpsuQOEke3ehi0uuHywgBVt3HV80pzNsnrG
         IZFo44MhoDS1Ho/4D/rH85haYAU3UEx09UtfIt01+tlUVnLDtb9CyBjrVYOoqI1IDGmG
         bCeNDF5vAvSjx/4xnbGRy3vcK7z6xduFKZ+UwJ0CX4yZDrqMfkWnYw1hzEjBkkbCbLXe
         sa+5JBKzYSzadibgyiRIkFdBY+YYHuJTLjCMqDP6BTTpO+2Bc7tas7y1TiiBv2LBlD8b
         71Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=5uydmQAlTy1g0NzVV5Qq/qsbIQcbc1kjIBcR/lA2BoY=;
        b=0qOJ5XZMUvisOJB1PkAN1M1gg2eyEF4EWpUN1kN0vnETFLYLNyPLzpMKcHGW5SaYAf
         5RwxBhXeekpxi96TU2bPZ8M8enWHVdKANFTfx1gPJLCEdDVzDVFkq/b290rw4CXjM0yF
         MPN5y7AfPDsgDjaACh4ZVmT4oCl6zv95GsBdJDn4aGBrtomyYzk9yuEzEF9JhNhyY9LC
         fqdqzGAGYS7wh8ENnCE1sr7FbhF0DwCURURDRIeZRuDjT7FiZJxsj+QU5F0QLaBsCWpI
         lo02AddtdlMXDs6xiQG/ztOBWlA6CRWdakgV6ktxMOkEi4VbEDBymPnyw3KjHGSvOAGv
         VJEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=amadeuszx.slawinski@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id i22si468207oib.2.2020.05.04.02.23.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 May 2020 02:23:50 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: i0OdvxiD2aSBkBR9skPeEjQGoTe4XBHC4nKaEqdtBZg9VhfP7/dMk6Rkx4OnRXHvHdJQCpcti/
 gqwTjdlb1jCg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2020 02:23:49 -0700
IronPort-SDR: J1Cu5dy96mFd8lt0e95yC5aH2xOFfUGHqnzHJD6rhtCYkV88/ylCCYoTfZ9K3hG60rnEgIxdrj
 BMqyUlnNnE8g==
X-IronPort-AV: E=Sophos;i="5.73,351,1583222400"; 
   d="scan'208";a="434044101"
Received: from aslawinx-mobl1.ger.corp.intel.com (HELO [10.249.151.177]) ([10.249.151.177])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2020 02:23:45 -0700
Subject: Re: [PATCH] ASoC: Intel: sst: ipc command timeout
To: "Lu, Brent" <brent.lu@intel.com>,
 "Rojewski, Cezary" <cezary.rojewski@intel.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Richard Fontana <rfontana@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jie Yang <yang.jie@linux.intel.com>, Takashi Iwai <tiwai@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
 <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com>
 <BN6PR1101MB21328B6F4147640D07F9E40A97DA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <c8309abf-cbfb-a3db-5aa7-2e2f748a6d34@intel.com>
 <BN6PR1101MB21328C54E66082227B9F497A97D50@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <5e84c48c-a5d1-b2ff-c197-5efa478c5916@linux.intel.com>
 <BN6PR1101MB2132D23B042284DDA667642A97AC0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <9d003948-a651-9920-86b6-307e912dd8ed@linux.intel.com>
 <BN6PR1101MB21325FA4FB1446DC2CAF6C6797AA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
From: =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?=
 <amadeuszx.slawinski@linux.intel.com>
Message-ID: <a0648aff-1c85-cc76-650c-1880381c026f@linux.intel.com>
Date: Mon, 4 May 2020 11:23:41 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <BN6PR1101MB21325FA4FB1446DC2CAF6C6797AA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: amadeuszx.slawinski@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com
 designates 192.55.52.136 as permitted sender) smtp.mailfrom=amadeuszx.slawinski@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 4/30/2020 5:38 PM, Lu, Brent wrote:
>>
>> Hi,
>> yes that seems bit weird. It is bit better as it does not modify common code,
>> but still... Maybe going back to your original idea of replacing memcpy, try
>> replacing it with readq? It should generate one instruction read (although it is
>> only for x64_64, for 32 bit kernel we would still need to do something else).
>>
>> Thanks,
>> Amadeusz
> 
> Hi,
> 
> I've compared the assembly to see if there is clue. Both kernels are using 64-bit
> mov to read register and the only difference is optimized or not. Both
> implementations are looking good to me. Currently I don't have answer why
> slower kernel hits the problem while optimized one survived.
> 
> 1. Old kernel. Code is optimized and not able to reproduce the issue on this kernel.
> 
> (gdb) disas sst_shim32_read64
> Dump of assembler code for function sst_shim32_read64:
>     0x000000000000096c <+0>:     call   0x971 <sst_shim32_read64+5>
> => call __fentry__
>     0x0000000000000971 <+5>:     push   rbp
>     0x0000000000000972 <+6>:     mov    rbp,rsp
>     0x0000000000000975 <+9>:     mov    eax,esi
>     0x0000000000000977 <+11>:    mov    rax,QWORD PTR [rdi+rax*1]
> => perform 64-bit mov
>     0x000000000000097b <+15>:    pop    rbp
>     0x000000000000097c <+16>:    ret
> End of assembler dump.
> 

Hi,

That's why I would suggest trying with readq, it should also generate 
one instruction read x86_64 platforms, I looked a bit more and there is 
fallback to generate two 32 bit reads on 32bit platforms, so my previous 
concern about having to write separate handling for those platforms was 
unneeded. So I would recommend checking using it.

diff --git a/sound/soc/intel/common/sst-dsp.c 
b/sound/soc/intel/common/sst-dsp.c
index ec66be269b69..e96f636387d9 100644
--- a/sound/soc/intel/common/sst-dsp.c
+++ b/sound/soc/intel/common/sst-dsp.c
@@ -34,16 +34,13 @@ EXPORT_SYMBOL_GPL(sst_shim32_read);

  void sst_shim32_write64(void __iomem *addr, u32 offset, u64 value)
  {
-       memcpy_toio(addr + offset, &value, sizeof(value));
+       writeq(value, addr + offset);
  }
  EXPORT_SYMBOL_GPL(sst_shim32_write64);

  u64 sst_shim32_read64(void __iomem *addr, u32 offset)
  {
-       u64 val;
-
-       memcpy_fromio(&val, addr + offset, sizeof(val));
-       return val;
+       return readq(addr + offset);
  }
  EXPORT_SYMBOL_GPL(sst_shim32_read64);


Thanks,
Amadeusz

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a0648aff-1c85-cc76-650c-1880381c026f%40linux.intel.com.
