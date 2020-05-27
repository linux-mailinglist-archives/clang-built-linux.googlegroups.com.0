Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBB37FXL3AKGQECPUPM5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1F21E4D27
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 20:35:28 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id bm11sf10412766edb.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MhnGPaUzdWD8tY+rVBTlv9NKbOqVBtEuYLX/71qwkRY=;
        b=Vj8E2ADAbXlyNqQaaUaGHjCQ6RVSODgRZNgHVWYx7Ug6opIgn1XL4PBRVI+P4vkVUp
         T7GpLlexlZ7QXJG41N2mUjctacCESZBm8eee5IRNEwSnkopAf2oVwJ9nIo7UpW3UvXAx
         UDI7YF8n44gS15h8hlfQJ6eAOnV0MDWP+WZVPaNIJudQEzBF3RwbBtNUNKtLIBFisH/N
         tM6Wik85mKdFmNXPgO7aYfmDx+5LW/HEeAkOEdE+SUUt6totkUECnvjiZOGMkeKFx4cW
         dv5jgjEsPxFS2VGmgKELApZ/K0KuygImts9foTKzjgcMyAzXHLYHX6qnY+YT1RAtVOeo
         8SoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MhnGPaUzdWD8tY+rVBTlv9NKbOqVBtEuYLX/71qwkRY=;
        b=bVTXth5Iyy7ZgxVDDuYTHHHQb4diKSrKdjzCFbYeXhmqZUisTB5Qh+kduk1Il5ytY3
         9ngbV07vVJR7so/9FVzshu95qA2ZsMCidnXkj1piYdvEaJdTU89GJcYaJyjs+BChwVlk
         wWmArKGFXyjtoc/OFPuUtrwXPt+BGQqfRTGZWnVHQWEyhHlH7T6JeDcm15N4ueQWRB/V
         YdCyqGbKPVD+uRNvvHY7m1dUZ1P7wu6WoFCaqKp2cST1Id/qcvGyTpj8Qe7UBHg1B/h1
         bTnWsmJ5v16fYbEAgRCfkavVJnCFEvJs0aS9HcVuQqjY0KI2dvI118KksSryaqgkbRqF
         mRXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53339/F6x9ao54wPE/CiNeyfKx0RIlVemTJTxtNbg5sk2lT9OkhI
	Zx+DpqyBri2wAfj0bQr52R8=
X-Google-Smtp-Source: ABdhPJw08a90bJk2ao0ux2iMF5AJAvhC0sN3o95n+MmzMq7dU1nldnZt0DmbGjrVBEfWMpr0WegnAg==
X-Received: by 2002:a17:906:9719:: with SMTP id k25mr7445412ejx.411.1590604527990;
        Wed, 27 May 2020 11:35:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1797:: with SMTP id t23ls4339644eje.6.gmail; Wed, 27
 May 2020 11:35:27 -0700 (PDT)
X-Received: by 2002:a17:906:55ce:: with SMTP id z14mr6058866ejp.50.1590604527530;
        Wed, 27 May 2020 11:35:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590604527; cv=none;
        d=google.com; s=arc-20160816;
        b=dPk/S4vZa01HIxVcqLJTQkCANSOhv/4J1mZuk3vQ7qmXDYIGYtmryMg8FWZmwulJD/
         mJRZau1QzBmNo8hYp9bD40cWzSrRyYtsi+hpgQfjBEhSfPQRu8vPf87IVtoTy0anYeEC
         DviDuooCoYxPDd4+q9zDiRijJ26qOWaZIBm4waD+wlxcuosmvQmiUgQQSOH38rm9v7mO
         xKeSc9cjWyZzHfk5RpSpdQo1YlKsVoxZUvyQuTVP+LcP0CSJj4/hTTi6G/h3b54RTJxx
         G0VTIz8IjOlsZDPu+QGw4RYxwHgwtkSVrEs6rM9/H9XOHgk3nUPDpnTOK215wz/LtnKC
         2tZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=MhnGPaUzdWD8tY+rVBTlv9NKbOqVBtEuYLX/71qwkRY=;
        b=vVV4rOHDIy11LM/3mcpBuUcmukQf2rUWtZOEXSVtxutkA3Z1XNF2BZOMxC6R4M12/g
         9z4Qw4esxAcw7glkLjDRHzkXpIFAu1HJfFadto2zaJLEeAcH9Sx2umnu0TPQkccdraep
         oGV18GIj4ye1JaxCy3BQta+QZmBGOGc6dGrK0VGkMZ5/dUUVSrRwlzv1pBhHOHqbCI0Y
         0p3DlYJc/VQ/w/OwckSDceiSV6PK/MZsUFeGJuQzxUCqFq17Fqjc+d5jk/HqLgrUHHYN
         KJL7QqllhfXpP6g+gOelgPLrvl5/rnew/efQtQxC8ZaXIw8YZzJa+NRWF7X7lD1ih1yi
         h8BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id o23si179677edz.4.2020.05.27.11.35.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 May 2020 11:35:27 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 95D78128B3528;
	Wed, 27 May 2020 11:35:25 -0700 (PDT)
Date: Wed, 27 May 2020 11:35:24 -0700 (PDT)
Message-Id: <20200527.113524.946608619523725892.davem@davemloft.net>
To: arnd@arndb.de
Cc: roopa@cumulusnetworks.com, nikolay@cumulusnetworks.com,
 kuba@kernel.org, tglx@linutronix.de, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] bridge: multicast: work around clang bug
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200527135124.1082844-1-arnd@arndb.de>
References: <20200527135124.1082844-1-arnd@arndb.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Wed, 27 May 2020 11:35:25 -0700 (PDT)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 15:51:13 +0200

> Clang-10 and clang-11 run into a corner case of the register
> allocator on 32-bit ARM, leading to excessive stack usage from
> register spilling:
> 
> net/bridge/br_multicast.c:2422:6: error: stack frame size of 1472 bytes in function 'br_multicast_get_stats' [-Werror,-Wframe-larger-than=]
> 
> Work around this by marking one of the internal functions as
> noinline_for_stack.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=45802#c9
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied.
