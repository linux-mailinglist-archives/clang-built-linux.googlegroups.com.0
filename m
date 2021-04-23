Return-Path: <clang-built-linux+bncBDV2D5O34IDRB6MARWCAMGQEZ5N7YTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DC2369C30
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 23:47:38 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id k6-20020a0565123d86b02901abbe47224asf12099244lfv.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 14:47:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619214457; cv=pass;
        d=google.com; s=arc-20160816;
        b=v8IKvfyNzhD7aSUFAqhYSdign9np0JFuHKEQRvIU4u3dw4gsCp5Jyidplza7OaCKGI
         t6zsWtjXWIS/bG5NzvimRAx1cSgLRGqNxrUv9M5/+502XizPuv9WEhQPBHUz+wqewgIy
         0/saDZXbzeb9zTOE2lsjq8z2ee/cXhCW4xRvt6NnFKeIZ+IklJ6nEEEyVbQy5dUS8jCr
         YkvLBtN53MN6dvKvRqk6b/uTZ+dydMHB/iAUbrAUc92G1328Imdab1dCA5RKJLIc+O4k
         a5CVjJCqEsihrTQO8S9TQ7uoxdJ4s7/akCVklWccfZhIDiCJwjrDE7ywbbErfkGNHToW
         bbgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=SSwDBMT3hFkya1nzph/JQ7qvQVluKUfLhYonyqRo2WM=;
        b=eUVEkgpeB+bEdSxptv/oq51bVGPf/7uzeiNF6BSAOQIZ+WSxMVjR1h+OafBY+305dE
         z9A1Jf/O2u6qMveqzKg9EsfyT9DH0bKfr7Y/oVWfsU4A5qpPGZ095ixR4hxfrgfuUPha
         P9yOCf3fQvKn/2kisj5L2/r7otr0JHouBCfz53YIDUyv9bDqBN0S2F1+3tJbyB3e/g2N
         NH4fCjzZWf77cOwY+6VLKBBraSwmYY6/ViZB6VaHDMMDqLgp+eYd9jaG9kKB5IYOLPB3
         mt/bqiz3/8J3UA+uyzfCkGNoAWFIi/WyqhtGMQjyxL//MKoDFmUQbq7PdRSGbYNMVl/b
         iKVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=RtQfEAMI;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SSwDBMT3hFkya1nzph/JQ7qvQVluKUfLhYonyqRo2WM=;
        b=SeWFK/MY3ttgaLhEKu0K9gLRV+kVG/aDP6o+A2lM1O1RIARYigLqmkBSO5ibx/W8KX
         dKtWZFnkLqfXUpsMUd/19UnS+u5NunsyxjF5UI4V/iJVNq0rafUWYA0L+fnzLhorGEQf
         ZkQiCcJ6HTuUS2wcJQhThMQYVfneS8RHQ/irIv2GUArDGQ9pqWQFQYHYxmbLhHbMG5Qg
         uBCnpsrYknEY/N8uwBufhnekTumA8Hia8rjC11MbaZANMg2PaY5Z1u5+nWYqao9VqNLy
         OmjePQlgjTaZ2R+kiSSHPBE7oAS86fUcQMQuX0tNSUe3WHn/YpG6G636IGt9iAAEasvV
         ZKUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SSwDBMT3hFkya1nzph/JQ7qvQVluKUfLhYonyqRo2WM=;
        b=iJCM2EYi9yDiwGv3PpCkAhH1lOeE0CTMnlzZgsYVtnBMUuteQ6tAHcOa7fKntnrbXh
         g1pWuzZb2DbpUUwiJ538b3foat/UOAhky2DN5BzEoUhti6qAMTQIMN4LR2vA+gP/XMA5
         wTsIG1NsobEdkC7kqpcsZ4gP6iU+bfv6lU0gLMT+oNV4a41NYVt6pL3js5rIygY5iWgk
         L/Bk/KOyrXuI0EIvwa+82YZZdS4lQMaGZGW7OAYlI8WIVBrWcAWTHPfGJX9wupwl9+Xx
         DlqUV052ja9UPHkpFVULeYJF5UddV2aqJGjLqbwZ2WPK6yZLWqFF1X7p5B45s2Dte1L0
         gxMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531z9wyBZKhuizyaBs2xlp5JuDmUMFphjKKg36kfCbw+THDkGmJM
	yVPXgIyHxNH/hr5HRsowPNc=
X-Google-Smtp-Source: ABdhPJz8PpjX/hS7EtFdq1mZUK3Nl/qluxBgxFzMm1Cfhvj5otOPtQ782B0vwI7fawSS/KNb+TykLA==
X-Received: by 2002:a05:6512:1142:: with SMTP id m2mr4217640lfg.86.1619214457667;
        Fri, 23 Apr 2021 14:47:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9f57:: with SMTP id v23ls328537ljk.4.gmail; Fri, 23 Apr
 2021 14:47:36 -0700 (PDT)
X-Received: by 2002:a2e:a78b:: with SMTP id c11mr4217946ljf.6.1619214456453;
        Fri, 23 Apr 2021 14:47:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619214456; cv=none;
        d=google.com; s=arc-20160816;
        b=kkakA24Lw03o0ImJjoH6l4uCvvq3acEPEwp4Iakm3WjlfLcJpbcPRb4ozPf9eWjfYA
         Syljp/5c4mo3VWdfydoUnaofjBGKiwh4TUcsmN20JCRNCqX5WMb7BzwKzmM0dpr6XIy/
         KiS0N9QFZF0rH1LVeKcxq14WzVS7Hh29cKh12doVhBTlqoGyGe5Op6tOXmVnIf/sxyxI
         ieMs3Vl/lN4zWAce9A2maG0asNrQVy9BC7rEmlGoFffM9wMyiD3CnUm/5FgPzfNCOnV1
         0LJe6HgFk1fuI2rwIHEqXtFV1MtwhB3ca/5N5JGRp6D4mKBuBndcNIsQZ9WZDXBWGSaJ
         5hpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=9SDxtZJGQ1vsrHdafRND0IxuvMBmwHOT0zn6oXkRby4=;
        b=PCs8ah3JTzy/5wN5m+R3ggjW5/h5TuOmbcVdslv/UPQqOlnQpNbT9G9FwB0ufKgHAa
         x2sSlIWqXv9IbdeuufCyBGGm6txdhmpPb7AlXc7Eoxcr53j9gA4bU/EYn2EZRObBR5BO
         gZyqtntz4RD0OiJs+j7q0p7BcaxeAiEO1Ig6LQ+2nRoz7kWqWKkaI7cAFGcVzTtKM0Pd
         JvNc7RZ5ImeZ0H6zVQSFC6fohk3+Eci4MqtAo9n/LbslGjSdmBpKj0OhK2j1iUVpsGEH
         WRZaTXZb61XNAPPAxzC/V2IX3BXKbL3nr8IhNY9sgxVvb2H8iCPCatH81jCc7DcUZzKH
         /rKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=RtQfEAMI;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id i11si465030lfj.6.2021.04.23.14.47.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 14:47:36 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from [2601:1c0:6280:3f0::df68]
	by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1la3e7-002Rx4-6A; Fri, 23 Apr 2021 21:47:31 +0000
Subject: Re: ARCH=hexagon unsupported?
To: bcain@codeaurora.org, 'Arnd Bergmann' <arnd@kernel.org>
Cc: 'Nick Desaulniers' <ndesaulniers@google.com>,
 "'open list:QUALCOMM HEXAGON...'" <linux-hexagon@vger.kernel.org>,
 'clang-built-linux' <clang-built-linux@googlegroups.com>,
 'linux-arch' <linux-arch@vger.kernel.org>,
 'Guenter Roeck' <linux@roeck-us.net>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
 <fa0bed95-5ddf-ecad-0613-2f13837578c3@infradead.org>
 <CAK8P3a0ttLxzP0J-mocxB2TkfEYJYj37TdW=uM65fB4giC_qeg@mail.gmail.com>
 <026d01d73877$386a1920$a93e4b60$@codeaurora.org>
 <027401d7387e$f5630120$e0290360$@codeaurora.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <24da08a4-e055-d8ac-8214-97d86cdcfd3d@infradead.org>
Date: Fri, 23 Apr 2021 14:47:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <027401d7387e$f5630120$e0290360$@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=RtQfEAMI;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 4/23/21 1:26 PM, Brian Cain wrote:
>> -----Original Message-----
>> From: bcain=codeaurora.org@codeaurora.org
> ... 
>> There is a hexagon cross toolchain used for testing QEMU (userspace) guest
>> code test cases.  This same toolchain can be used to build the kernel.  I will
>> share a reference to that toolchain, standby.
> 
> It's published as a container in the Gitlab Container Registry.  You can use docker/podman to pull "registry.gitlab.com/qemu-project/qemu/qemu/debian-hexagon-cross" in order to use it.

Hi Brian,

Maybe that will be useful to someone.

However, I am looking for something like a tarball that I can download
and deploy locally, like one can find at these locations:

https://toolchains.bootlin.com/
https://download.01.org/0day-ci/cross-package/
https://mirrors.edge.kernel.org/pub/tools/crosstool/


thanks.
-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/24da08a4-e055-d8ac-8214-97d86cdcfd3d%40infradead.org.
