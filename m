Return-Path: <clang-built-linux+bncBC27X66SWQMBBWV73D7QKGQENGPL7KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A9F2EC525
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 21:38:52 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id x15sf2437955otp.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 12:38:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609965531; cv=pass;
        d=google.com; s=arc-20160816;
        b=W3NK3AWOXRFd2HmaTKQdAPf6J4PujfWfp+cNZKo37ZPxerHj2eAcrcH5fRmlVMRsQE
         MBKDDyng1ijdfWzjga5553eMy6EXQMHIORJ0jImyde4KxdcLlDliKUMxx2PC9IGE2ExT
         mDiyItGKHFDPigfk8gPo08ZdaWGeUlX5AE+cFGh101u9wZ4EiOFMpJ3SPzRrrGKqVmpa
         HyNZykQDpbiR4C/BPe8ztRQ0aSnJW0DcePtLZpSCV3BEQbxycnclZgaldLAiYG15ankX
         NbGuUjYo3e4CrSNIaTzVJ7F0zXSwrCQLO7WiI04qD0GRfUVV6GWvUqQq+hzgvT8aVmHG
         YwIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=yDdfjRahvnQGGUVE5UKQnvP18B7c43wKHsRNvBWpHmc=;
        b=LpVZ3o7avvVITQY966O4faZosa2cQVAZKfVqTOK4eAnvyhrurnKofXSEnGTcj/1fkK
         pGYCaxgzOCPHgNshkqW31yh8hSc+kw7HO4I3EOrYDWhWya/cXubB4pfThCKcxQrGJKhD
         Zll6r7C0Wab2cJb94gAjEyFsUkCXJxy5Qs4s4o8HKNlNmKfS7MtZBnfYYo5oMWPA4tgx
         x6Zr4V5IxkwzuycJRZaLikC98YV7qY7cIwltsYSO3U7Fawc2IbSnuotOIDqZ9C4/BE2+
         D65J70x1fAEbxM5cG0eV7ihW2L8kluagyiHZS+gDSzRGSEo81fxVOiJ99Qk4BzapEaBB
         bwmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Gc5ZZd1A;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yDdfjRahvnQGGUVE5UKQnvP18B7c43wKHsRNvBWpHmc=;
        b=FQ8IrYg7e5LiJccNB1SLG9kqAHiBBX6jjtapiJRnhCcK6ZwZfsbiREVxSBTj80DFhQ
         N2j0YoHEuU1gzWXfGWk08yDeKFC+v43rULoAtTIp9rH97WEfswjot5L4Koop9223E9fu
         dqST3QextecDuK7l3RTukmGVT9PSsgvJW7cS6g0hx2nZxswe+HqDiOuEX2Vh5IMDJ8aV
         RiSxp36ppUPaWbgIHwSWk1bVnEb6vwzKu6i0ARQaHijr0/eqYRGrPXI/dPLmf6aVqXuP
         Vs88/iNB3DSuj4JVjch/BUZwn6b4lcV1jlP04AkEx6w+auYfrbxFhxvv6VN6AugQb8eV
         SP6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yDdfjRahvnQGGUVE5UKQnvP18B7c43wKHsRNvBWpHmc=;
        b=SwSwuURMbMc2L8HsDtg87JSG6xGxFPWYRtwVvyd2NxSwYrs8NbHHOpc00MH5jsNtf6
         We+003O0su05jyqtIU2yWsihFIfaOkgS+Fii7U+oF7jhTou1J+0psRMYmg7tFcLGuRY0
         aPNqIx9wMVid9Nm4k/9pxaMe0fZPwKselhnrdbCt7eDv5QFju45k8cW9DDFkCq3JPHkE
         3LPrIxk1/6e1///VD/JgE7btZ6APC06CV/COTxWqAA0WNAg1l0aBljsAcxqSx6iUFWQ+
         W9cOKyH1qreRNs+39+gWwoyVeZOetMvLAhcidhamxMsuo/YGyPyMo59oyXxiHpSDdqK0
         KbSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530U9+a5zk/HA+QvYTlLbXFrLLAYEbVZ/DmWxkULunpDqkkb8ZUs
	iQw1ZzavbWhwvj31v3ljsKo=
X-Google-Smtp-Source: ABdhPJyxJU11At3yIv6dALWFmMf1VFapLAK0nWm26hPt6/tJhIXmz521ju1zBTfCGIVoe/MavNQBYw==
X-Received: by 2002:a4a:364a:: with SMTP id p10mr4076263ooe.48.1609965531000;
        Wed, 06 Jan 2021 12:38:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6841:: with SMTP id c1ls1191962oto.8.gmail; Wed, 06 Jan
 2021 12:38:50 -0800 (PST)
X-Received: by 2002:a05:6830:107:: with SMTP id i7mr4412036otp.247.1609965530621;
        Wed, 06 Jan 2021 12:38:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609965530; cv=none;
        d=google.com; s=arc-20160816;
        b=c6L42jhe/mhSY5h0xT0pQEo42d+l1XT2A6iYFkTklsa4r5rBFC59GboT8Tizq0wQ0i
         oQbKYCTcmMVvUImnA2YrssqKBMlZxJrheO5GDyTt6XYqRvQ6hfl+MNjb+HV+MAuNf5ri
         /cQa+1WwPhv5zVyJAHVKKggbLKYvo7V4KzkVGf6vFiussJPn6ALkXf2EPnc7UJSXUUsY
         7p28cYoRp/IZfumLq/YXfGcUO5ozSQ7TfNJal1J3sgwgOICGjI/gvnI7GVacYRJjdSUJ
         s+ec+EXn8RiStgCFdikGqzTZ3AGWC/P8ZoRbfKla65ZTogx4ChnQViFu9boddFb50V5G
         pa0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=WykEemMsSiBCYaO/Puc+Apjx+xtTM6cWf49K8KW8Nsw=;
        b=lDSNAUwk/ZJwsdr1jcaPI3w6ovbPL4rncheKr/PrWvtbHWxN9/wWA5ulWPM8QDYU2B
         mEc45sIZNLj50p/3CSRc7TfWggCD8HGcQwSUUBW/ZJayaZZ1qIth+FVsmfv5ziOBiUo4
         QYOg53usHfqVzTTzAk9dKq/I9sPVJ8NCdQEX+Nx554OL26QOIY6wYav0c8vYNBPrnGXB
         bcB1Bz8rUWJYY6x0kLKKdzh4JJS8R0x9puAYNyLdP3DqM7zClxGFKFgqDau3p2EMa4DR
         AGc4sj7liNOoKcH1zTCcG+GdRY5k1Tf+luUZ7K8UWR5uIs0DQdpjrn3S7RbvWy8N+EXd
         +YoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Gc5ZZd1A;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id r27si434095oth.2.2021.01.06.12.38.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 12:38:50 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-J9tPM8J4NYulyRi8XI81Nw-1; Wed, 06 Jan 2021 15:38:48 -0500
X-MC-Unique: J9tPM8J4NYulyRi8XI81Nw-1
Received: by mail-pg1-f200.google.com with SMTP id l22so2745941pgc.15
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 12:38:48 -0800 (PST)
X-Received: by 2002:a17:90b:305:: with SMTP id ay5mr6093121pjb.4.1609965527217;
        Wed, 06 Jan 2021 12:38:47 -0800 (PST)
X-Received: by 2002:a17:90b:305:: with SMTP id ay5mr6093099pjb.4.1609965526941;
        Wed, 06 Jan 2021 12:38:46 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id h17sm3261485pfo.220.2021.01.06.12.38.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 12:38:46 -0800 (PST)
Subject: Re: [PATCH] rxrpc: fix handling of an unsupported token type in
 rxrpc_read()
To: David Howells <dhowells@redhat.com>
Cc: davem@davemloft.net, kuba@kernel.org, natechancellor@gmail.com,
 ndesaulniers@google.com, linux-afs@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <f02bdada-355c-97cd-bc32-f84516ddd93f@redhat.com>
 <548097.1609952225@warthog.procyon.org.uk>
 <c2cc898d-171a-25da-c565-48f57d407777@redhat.com>
 <20201229173916.1459499-1-trix@redhat.com>
 <259549.1609764646@warthog.procyon.org.uk>
 <675150.1609954812@warthog.procyon.org.uk>
 <697467.1609962267@warthog.procyon.org.uk>
From: Tom Rix <trix@redhat.com>
Message-ID: <07564e3e-35d4-c5d4-fc1a-8a0e8659604e@redhat.com>
Date: Wed, 6 Jan 2021 12:38:44 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <697467.1609962267@warthog.procyon.org.uk>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Gc5ZZd1A;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 1/6/21 11:44 AM, David Howells wrote:
> Tom Rix <trix@redhat.com> wrote:
>
>> These two loops iterate over the same data, i believe returning here is all
>> that is needed.
> But if the first loop is made to support a new type, but the second loop is
> missed, it will then likely oops.  Besides, the compiler should optimise both
> paths together.

You are right, I was only considering the existing cases.

Tom

> David
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/07564e3e-35d4-c5d4-fc1a-8a0e8659604e%40redhat.com.
