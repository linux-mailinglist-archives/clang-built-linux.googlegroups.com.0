Return-Path: <clang-built-linux+bncBAABB5NUXLVAKGQEDPVPWNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id B959788AB3
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 12:20:38 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id c22sf29205qta.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 03:20:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565432437; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Bt3N8vfj7NnmvEZyc/q2eZ9OI3dQqcbDJKW3I3MzSlldwV1YPg93hFBQoTmsfRMxF
         ofZ7HnBmKHDSTTnpXgdjHR4Rq/NZAiqUTNGabGDJaWYFuYZ/tF/IJHCGJIuSn38WMWEi
         Y4EPmSxbovHz3eiFV20Q5t4lDWXunXYONk0sgnfeXKrKCFHi+gDZKAtyhOYMM55alvrd
         XOACcwLb5/eIufYat1DZiz0+DBHBlkLgg6XZd/NYYAbBnNF76Hbz70LrvQJblRrXvU2Z
         eSEXXUOReTukgTDnncSrxoIU5naRz//WBE9Tqw6iJ2jKVzXqxDs3L3NGe/TY3SmBFeaY
         JZJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:cc:from:to
         :in-reply-to:mime-version:sender:dkim-signature;
        bh=qYhFplc5bhVuH6MqHUDHEOdqB44o1bKjGjMrCiudxYA=;
        b=JbxBNkvyqKpgkOT6eECaMT7x6zx00lRr0YoH0Nw27LO6VXWOqb/vY+gsX0FzCoLerc
         qMAX0r0V5NDrKJYLPnsrj0mPVr8jpERzMvDmNfcf2wby8Li7wAqhpV9pXyU6TsEQA0R4
         W0wh39O2AamKa6C7WiO5Isu4Cdccn1xT0i0JbFWHpmsH+lXTFsq65vLirpOw3fla0LMU
         bdz8chxdJ99YSXF7KznQq7x31i3Zcy9dPU7a8UR9OlyWeg6p4s6ZmNut58h2v1nXQLzn
         tuSF5ZbRikgpE+vldqdQPYs1piuwGpDudY9coTpHM2PQB6WYrG00Yx+Ny5S42CwB6EfE
         pdVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:to:from:cc:subject:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qYhFplc5bhVuH6MqHUDHEOdqB44o1bKjGjMrCiudxYA=;
        b=n6pNv9SBSJP+pLIAEf66Gy1f00Izzj4JRSBEul5Vkvb8qXv1ps0kcgfz8I+s4Ttcwq
         BBJQbeixRacTw24jtHp+pgktAe7/gao1dHqTX6zEq8UIwbA87r/Ogxafh8rnwTAge2Dl
         QglnjQdg9xxhnKfh+DVjm4DsmkzDdiN+VW4uNTss1igOaE8qNooFPya++Q9sTS5Fc71z
         +TXd8xxCb7ZEvjcVOgGiDI8ULlr3/ltCD3DFknWYEDEOtiDW/692v56GJuraVEwgBRiC
         fgxWbOiEYzeDQVvyyAKTNq14IYVelTHEkRhRdDmCQnaPtHGkuDFrsOn6utpE0hrwEpuc
         6gyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:to:from:cc
         :subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qYhFplc5bhVuH6MqHUDHEOdqB44o1bKjGjMrCiudxYA=;
        b=EtwrMjvduzKCp5Amo4T9Up0rqUjazBVFsroHHVivk5dF7o2Lvh4g8Aaad+64vQiYlO
         VNC0LAgSmmYGJz98Krw3gXeeoEyEPBnMmbmVtrdeVAg+nuKf+KQRohYAoTNeFpwhWKph
         3spBpEZeIMBZiZtUegMM0ZbpYgHjJc4pDigcmIoF/osKB/V5JJblyOm66ZJmbytDOBPw
         SqdERN8pyoTBpdr+E0qF9K2ZINJxQ7I0+Wgfm7Q9oUiC70fy6EToynEAiLHGNszelWwF
         9ZrRm23X65nDjWGKkNCefsdKsS8VpvjRrENd+UvDeSt5lGK99ntXF1PAFInMJJf+yDSD
         9FiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUG8D18ALch8t3FPdvGPJD7MAZmibZD/L5UfSnRpnWFalr1BNpv
	0/Y1WrS/sCWSr39ZlXr6Sc8=
X-Google-Smtp-Source: APXvYqxKyTZFQ0JazcARSJngHulFSCqSSAlEgRo9paIDcUKcfAmThNZA6ITnARMHMzJzmFK4RVTmEQ==
X-Received: by 2002:ac8:46d2:: with SMTP id h18mr6632093qto.38.1565432437409;
        Sat, 10 Aug 2019 03:20:37 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:718b:: with SMTP id w11ls3516787qto.1.gmail; Sat, 10 Aug
 2019 03:20:36 -0700 (PDT)
X-Received: by 2002:ac8:71c4:: with SMTP id i4mr1246934qtp.245.1565432436933;
        Sat, 10 Aug 2019 03:20:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565432436; cv=none;
        d=google.com; s=arc-20160816;
        b=0Nr352/AOwj+MHh01aIrlo8aorSJjEV4D/e7PMPnQM/2bDmqw9cJ7jjrTGZaIrhuYl
         D22MEXzzi3RCCHhksqTyVyzypCBqhXWJXeh4PmwvahdOhDIa15HJpDuky21dG/72uJ00
         ka9NsslqGSaG+8TxRdkZaQDiDxT35HiDj5njg5p2PYG4b+hdnWBFErn3rNXRPEll3OUi
         MqyuSa/rXbq5/mnGegfuF90dmQKNuMCXzAW9YODuo00q7DZtNbx9wCgonPGErRf+c6wa
         V3EBRknSJmrVclBQqweazdr25NJFv/JryR5FznF2y4nI21d2zh2Pbz4ArzvsRNYQgGu7
         ZOJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:cc:from:to:in-reply-to;
        bh=G23YAqzI8T19HetQdcX7kjI4RG+fv1hWJdo2o5VB0xs=;
        b=1GhJXMNhaG3PlSQtVq0gS7a7BrhK8M6Gpt4GYI/ssHQGh2ZqEwqFgB41UrRHg80Boi
         QdpHw53/WEQMNYDiYtH6clEOJLIHTWZa9RFL2LCivky1X9jNn7rJxuPi/BG10BF6f69K
         xBmhTT8zf+YT7UPVjdkuUljSzmKvnoSJ2Sp1hGrujofheL2Lc07SyqYDE3UjBBj9yv+t
         jc3kNUjfpbYDIV3QYN2e7sNIR1A0p53gRjXI2ob0POdJc0DFqslkxtbTuRFR048PZZri
         /PYNkRRzmh021CPNyFz5l82dG08pqidNFKGgeltoXecPERQhmkc34jO5L2U3LyU7ZZW0
         VY2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id z145si4515846qka.3.2019.08.10.03.20.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 10 Aug 2019 03:20:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 465J5n2jRBz9sNC; Sat, 10 Aug 2019 20:20:29 +1000 (AEST)
X-powerpc-patch-notification: thanks
X-powerpc-patch-commit: 0df3e42167caaf9f8c7b64de3da40a459979afe8
In-Reply-To: <20190603221157.58502-1-natechancellor@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Tyrel Datwyler <tyreld@linux.ibm.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>
From: Michael Ellerman <patch-notifications@ellerman.id.au>
Cc: linux-pci@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Bjorn Helgaas <bhelgaas@google.com>, Nathan Chancellor <natechancellor@gmail.com>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH v2] PCI: rpaphp: Avoid a sometimes-uninitialized warning
Message-Id: <465J5n2jRBz9sNC@ozlabs.org>
Date: Sat, 10 Aug 2019 20:20:29 +1000 (AEST)
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=michael@ozlabs.org
Content-Type: text/plain; charset="UTF-8"
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

On Mon, 2019-06-03 at 22:11:58 UTC, Nathan Chancellor wrote:
> When building with -Wsometimes-uninitialized, clang warns:
> 
> drivers/pci/hotplug/rpaphp_core.c:243:14: warning: variable 'fndit' is
> used uninitialized whenever 'for' loop exits because its condition is
> false [-Wsometimes-uninitialized]
>         for (j = 0; j < entries; j++) {
>                     ^~~~~~~~~~~
> drivers/pci/hotplug/rpaphp_core.c:256:6: note: uninitialized use occurs
> here
>         if (fndit)
>             ^~~~~
> drivers/pci/hotplug/rpaphp_core.c:243:14: note: remove the condition if
> it is always true
>         for (j = 0; j < entries; j++) {
>                     ^~~~~~~~~~~
> drivers/pci/hotplug/rpaphp_core.c:233:14: note: initialize the variable
> 'fndit' to silence this warning
>         int j, fndit;
>                     ^
>                      = 0
> 
> fndit is only used to gate a sprintf call, which can be moved into the
> loop to simplify the code and eliminate the local variable, which will
> fix this warning.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/504
> Fixes: 2fcf3ae508c2 ("hotplug/drc-info: Add code to search ibm,drc-info property")
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Acked-by: Tyrel Datwyler <tyreld@linux.ibm.com>
> Acked-by: Joel Savitz <jsavitz@redhat.com>

Applied to powerpc next, thanks.

https://git.kernel.org/powerpc/c/0df3e42167caaf9f8c7b64de3da40a459979afe8

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/465J5n2jRBz9sNC%40ozlabs.org.
