Return-Path: <clang-built-linux+bncBC27X66SWQMBBBHU4X6AKGQELZVBJTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A7229D02F
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 15:02:46 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id l142sf2268545oig.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 07:02:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603893765; cv=pass;
        d=google.com; s=arc-20160816;
        b=towvvgtdQsLhYrOel8hPkhBVp/GefHFZC7vfmpKTDjDtUAViJ8oQZYJTfXqDjt4MG9
         c6TG7ehs2KUGEbFGtMaxha+ZANZEwNloQ0Jwx2tA11aFZRKi8ZmWkrDXqeqLNZYTi1Tb
         R9T3DYlxwLh1K2rly5OGbR4d6tE3MfrP5YWYM+mGR8gyDK/V6l6LR6NM7TIkiJFdYGfU
         UmYece4md2MaqAexvGXF0kboa3WyGbNghkCurooqlt2deq1ui37qwC3I2aPA/oJfWNWN
         QLgJtIBc/B7ReI3VC9Klrcf95v1F8bDB7fZaP6yyAmulViQqypjIv6btwX1pER4ucgbW
         E0Ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=xEBRp9VfNROuetf2euGnGHksFtMtNPMsfqJgvQi2pB0=;
        b=pIb0kzNBMy+3BZn1QmYpRHgg6bVx7lyv7IWYygH6s2P8B4LPQ/+PNJDQ2gNDJAxHAY
         nnE373pOcZ9ircybled4EisWl8L4kCFWfMS0q/XcReahYczeD3GSeWtuQZbYhZ33uIlk
         r+cHmCeKi0U287u+MI2uSf2m74zK0yjHjvVVTXzXkNb1pF/OEEMdmiw7NbIuGswxWVz9
         qGV+fPCWYtaVdFPUPs9IudRjOqegdyYdRQsgofdKHzstZd/p90mEGxV6QzodeDVnpTcW
         vUtgrOq5WGl5U+stcOtOIxal2NdKZWsYwGTledvYpLd3/JfH4jrK2a+LAXsY2EGcHiOb
         IbMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T8+TCB1o;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xEBRp9VfNROuetf2euGnGHksFtMtNPMsfqJgvQi2pB0=;
        b=Gkc9VMJEJoE4mpEwPZAalvRzMI6r7LN/A2cD+cP5esEw5DXYQbYjM2ibRvDv4xRbPi
         OK2W4H4suiHa90t8qWtz2lbdlcKY6qvPACXoRjNgh585erECBFnW2XWwR9NVeGm6yqGN
         jH2UTtw5m56U7tCfWhHxFQQRkba6QpyJ1dgdisAC5e8MMn0rDKTkXF6WZ/Rttl7xARDZ
         hbJLhBm2WXbWMJjzToyN6WYCqN8W8JuYmqvz6IryUCTgEnJe3/v8Ag+0ojz2PkIFByme
         hIHFzN0cCL3mKNqHZ1fvPzwHHYf/qtMiRjSyK54znSRQpjW9yD/QvUQb75ATkEZdASpE
         iAtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xEBRp9VfNROuetf2euGnGHksFtMtNPMsfqJgvQi2pB0=;
        b=NGJ+nYJC8xlpmw5nYRQ9GJFB78pebdye8ZmIyXrYAg9z58UgAvLG7haZDbwQacKIPA
         ETfwMzLeMVhE2h6QKNVmkGRzjInonhjE6b7S7nZ+Y0KIq6y8vfTkh5UwxhgeY41YjAcj
         tom/1De1b8EzjErocQTk6hlEoqtMfngXDP8OYK2wPwLcaPnEO5DlnmjPyIITyHuFDEel
         BtONIwQHo83q1a2DjhC2W9awl6unY2GEbpHHablj2FCN8IY5/ZxuaOhf6HzKV06AGJT9
         5DtYc9sDrjk1WU6p+Qrxg37eJimXxiIJ7XMG8/oq+drhiimoltTU5vrgCP7uDVJstwnP
         8VxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pzHUYsAXIKUBUY3fStcMJJm6GJhsneImwy4o1tyYMUT7RDtaD
	OdASWyFwDlFuWmr7wFSB9Xs=
X-Google-Smtp-Source: ABdhPJwTlzST3U3Q4l0PPDvu5R190DmbDGbKYvMNoQJCm20rwUZSpOOP+iSlB/gS1ftwYOhOAlreIg==
X-Received: by 2002:a05:6830:11c1:: with SMTP id v1mr5459626otq.258.1603893764984;
        Wed, 28 Oct 2020 07:02:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d650:: with SMTP id n77ls1396483oig.5.gmail; Wed, 28 Oct
 2020 07:02:44 -0700 (PDT)
X-Received: by 2002:a05:6808:602:: with SMTP id y2mr5457423oih.11.1603893764555;
        Wed, 28 Oct 2020 07:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603893764; cv=none;
        d=google.com; s=arc-20160816;
        b=qoUM8VYsFkZQP5pmYmB1F9ERMMi3eYPPnbNVIt6VQXd01o+siTGqewqZFmptSWHGnv
         jLkYkwE10une2bC2vGn7s7YxBNEwBfjYAtAUJjBG2HJXCJlWHVyHHZjZHbfN1ODeOftI
         gmNZQgZBUCgX6C89ZGP+PDlhkviNiY8ztbBZJfmR10VoXsjc9ckhIED2RcsYEhiH/rzl
         dtW57VYPk5JEDhf8CKDtJRPURiAgn61S3XwVoOG0H4zgK5QUmFbQr86GtiiAen06Q70P
         Mh6CuqDjNWKKS1q9Bh1GBr7Y0Hyyn5VwHtafiqhWSVQMI7HjPql5FiTK+EdihcQZiJjB
         AZMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=pA/ijsR6wL+A44Ymsd37c8yCOb9K4D0s+LLkBgVrjUk=;
        b=l9KzAcwCqH7/nStqxz5szxfriWG6ILoRVOu0ySkzse1v1VA9/+vUgoFBmGLswuXDDW
         U5lH9VfW4reliY+zLT5Dc+Kzi6BTf0+ygdnVwyCiM/qttniVbiIwIPtwoirZjvd7sWZK
         jyFNIIbyp0uwEXdDo4mFkY6WQjzT8U34NEfzB/0FjeozpbZ5ugNZRYra0YmzVUZHs1wp
         Bfcw79CaHv0e+uL/8pkz4DXjYWsXFGMTEIqCUuu00NLEEaNIy7LlIMkM3U9E7H8ovKmc
         MRJdr/fRzP3efFzgR768CDE7RexX6l04gKfMkyrTKGiuxG4MUYyR5YA9V1HznhUPIHah
         VnLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T8+TCB1o;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id n185si415416oih.3.2020.10.28.07.02.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2020 07:02:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com
 [209.85.161.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-537-E11peVapOa6-0M-hf1KZAw-1; Wed, 28 Oct 2020 10:02:40 -0400
X-MC-Unique: E11peVapOa6-0M-hf1KZAw-1
Received: by mail-oo1-f69.google.com with SMTP id w3so2393956oov.6
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 07:02:39 -0700 (PDT)
X-Received: by 2002:aca:bc89:: with SMTP id m131mr5038502oif.48.1603893758573;
        Wed, 28 Oct 2020 07:02:38 -0700 (PDT)
X-Received: by 2002:aca:bc89:: with SMTP id m131mr5038471oif.48.1603893758162;
        Wed, 28 Oct 2020 07:02:38 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id b125sm2656559oii.19.2020.10.28.07.02.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 07:02:37 -0700 (PDT)
Subject: Re: [PATCH] agp: amd64: remove unneeded initialization
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, David Airlie <airlied@linux.ie>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
References: <20201028133106.5420-1-lukas.bulwahn@gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <37c4192a-2757-574c-85e1-1df05c6a7a31@redhat.com>
Date: Wed, 28 Oct 2020 07:02:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20201028133106.5420-1-lukas.bulwahn@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=T8+TCB1o;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 10/28/20 6:31 AM, Lukas Bulwahn wrote:
> make clang-analyzer on x86_64 defconfig caught my attention with:
>
>   drivers/char/agp/amd64-agp.c:336:2: warning: \
>   Value stored to 'i' is never read [clang-analyzer-deadcode.DeadStores]
>           i = 0;
>           ^
>
> Remove this unneeded initialization to make clang-analyzer happy.
>
> Commit a32073bffc65 ("x86_64: Clean and enhance up K8 northbridge access
> code") refactored cache_nbs() and introduced this unneeded dead-store
> initialization.
>
> As compilers will detect this unneeded assignment and optimize this anyway,
> the resulting binary is identical before and after this change.
>
> No functional change. No change in binary code.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> applies cleanly on current master and next-20201028
>
> David, please pick this minor non-urgent clean-up patch.
>
>  drivers/char/agp/amd64-agp.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/char/agp/amd64-agp.c b/drivers/char/agp/amd64-agp.c
> index b40edae32817..0413b3136541 100644
> --- a/drivers/char/agp/amd64-agp.c
> +++ b/drivers/char/agp/amd64-agp.c
> @@ -333,7 +333,6 @@ static int cache_nbs(struct pci_dev *pdev, u32 cap_ptr)
>  	if (!amd_nb_has_feature(AMD_NB_GART))
>  		return -ENODEV;
>  
> -	i = 0;
>  	for (i = 0; i < amd_nb_num(); i++) {
>  		struct pci_dev *dev = node_to_amd_nb(i)->misc;
>  		if (fix_northbridge(dev, pdev, cap_ptr) < 0) {

Looks ok to me.

Reviewed-by: Tom Rix <trix@redhat.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/37c4192a-2757-574c-85e1-1df05c6a7a31%40redhat.com.
