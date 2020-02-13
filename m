Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBIMWS7ZAKGQERXDSIFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 498EF15CDFD
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 23:18:11 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id w62sf5875603ila.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 14:18:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581632290; cv=pass;
        d=google.com; s=arc-20160816;
        b=WsJPfNRvze4e+wel1qdOrTWw01Gg0QXj5WhJorYEfy/cnJ5uLU3YNDB3SLK8rKqDvo
         2L/O8cxyzbiQvwIQEWurzA6dviqSvB+QqtJffCC22sQsP9hcWwKnQDK7o1mZf831wQvz
         PgSIm7wYEN2r9rhxPMUKE3PaVqANql7kZ7HoE8XQpHXEeYo7Ao5fTgkHSJv5ES0b9zxS
         +SIlCAfzoT1lyQHuVjxSGDAFdHd/kYqrMyAXBFTZJ3jDLEirf0pwSd+LbXNooSgblOiP
         kNKpYqAgti+xgE9UYomxFyq51hVy5XM9RyS/5JhLfv8tgHMqUuMMEABDZCShg3MPZg6k
         S3AA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ocwtwXa1g0ijKaQI5fi4MBjC2hkfXVoaW+OJJFfznqE=;
        b=OxvW50r9aDsENXCAqlGccXiopQaJtb64nTK81DaDOKmUhENVx+qexSSOhoJ53/RI91
         3TFT35qdNylpAk+t4L9CKMINSKMM0iWK1xUkqSh7bCsYFX+Nu6bAGVJJztFyfOkVPTZP
         uSy50DK3bGowELgALEEfCVtK6hCHPibrvwE0t/0KhMa6JskVR9HbjaeFLUt/RNeRqVwP
         U+gy5x46asLH7dPIsD2XFIx1VJHST7vWLSzQg7Vz18lM3U0Vhh2XXtCNEagyMjtwALEc
         +WYRLvJbwyS8aRaCjHG1YhHrkBUM3t6Yc01UrEU1IQZkb/XsDq3m7V3lexNhfpQnUNmT
         Dcag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Lrn+CPnW;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ocwtwXa1g0ijKaQI5fi4MBjC2hkfXVoaW+OJJFfznqE=;
        b=Lth4A3Zl8HbNLdaf6/VVMV7Uk4/zhkxcfAb4G84a5oxEbmgjndpfO2JS29v2AaWPMe
         i5H+ozuRCKqTLOx2ct2c8PcY7iOLo25AXUVMyUOiEIt9lLLGKULMPO7JxFrVRExWfdq+
         imLAGuIHNDLdoTLitgyEIOCDMBaWkwOut/Ok4wEE0X0t44iTT/OwEbVaIM3thXanA8DN
         r+beXC5WqG/INJsWB8CXY/gsinILhyPDUPuKIQgX5+Vc1XI9TCi5sedTaY2OY1D7b2KD
         XbJzY2f1JBip9Zr8M0Lp7PPEu6ASR5qtargP2yj392U8k+cEI3ScDcdbqoHvyp9Ax64h
         4Ulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ocwtwXa1g0ijKaQI5fi4MBjC2hkfXVoaW+OJJFfznqE=;
        b=F31UpoJb4aJB6HM8luTUaRLSWJ4wYiIQOns8ZnBR0pdFBUbI5nSIpInKJJjMY2mER2
         ULmh5YqiihNMqey+DiXhNdjkVvOXRJo7M92On6aE1HRfNx3nv4D+w07nu6BGZCJ/sicb
         ap5daODLF5A+F3B8XDJ2RwSM9PbvfWMBkJTd2+7Lq5k8YThTSGjwqgb4Sz8Qzd+mAQ9w
         ciUJst6FMDUR34xfkBvjFZIbM+c4BZJ7nL+HySUA94fKRNFIOj37EbM4IfzIXay1KVRU
         85SmnYvwi9KNWPe2mMIZn6rt4rsj+sR7AQpdB6hD84RydVtO8jgq9tL6oCT2R2M4xzLY
         qW0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXSErfM11YF1OTttOdk7mdmvYE6zaq3iSCzQFakdmvawGOZkqfe
	2o5O2C/eFggxTAlF0hxSIJY=
X-Google-Smtp-Source: APXvYqxJA+TPYP06ini+TSYkJDPRcL1Fkr6WpkdItvFNWFQtvWjroLg4XljjX/Hu7YqQAMhtZvCLGg==
X-Received: by 2002:a92:1fda:: with SMTP id f87mr116179ilf.225.1581632289954;
        Thu, 13 Feb 2020 14:18:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:cd85:: with SMTP id l5ls20725jap.6.gmail; Thu, 13 Feb
 2020 14:18:09 -0800 (PST)
X-Received: by 2002:a02:a60e:: with SMTP id c14mr139820jam.80.1581632289624;
        Thu, 13 Feb 2020 14:18:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581632289; cv=none;
        d=google.com; s=arc-20160816;
        b=R23fcpoC9riHC9ZL3DVeS2UxNw8htxE7YGTqpq9hp87nAKMEUWc0tVyvMU7T1SgnHF
         gvoKWyqWhGV+noLq99Qu6XYN4KYyQlg0chHk/Tl6zTptsvFj6/AUQceeXQndsCPk6NRX
         AJVuhSCcxtwgOeUTUccNn6pP6NCYECmFhskJD31zmgUkFM6lmcXfCJ4gCnhaAiIkl85Y
         De43nA8R/cRNF5yqWMBV4RxcojmbOG4jMFnF7iCEr//KS+xQhqlZVJX8lesiSkgxMrOZ
         +Va9yR347BpB6r6j6qil+VgZ0V1CuMxLoJUvnp64v6pU4XnIQt7FzKUtqBGDFprGiCDp
         ntfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Qi71n+eauOK1OSXi8ZkVfgUb7+wXkbcDfLtR5AJoSms=;
        b=JYFEP2R323w3glZYK8c5yFaZFmEZS7i5nlVq9kGtZqPRL41vtsezOdi7bVeqsEvb75
         m5D7UaLRyCNPkL37ZROEWjsYhjNgOMt7E6k7x30sLdh5Nvn4TJxaLDKUR2+KAc90buZl
         VAnmHXpK4oXgJ7pVWYAydodjmG2kpcyxFxpB/4tmbM9MZyP/tBC7rjJ6NAh1bXwNK6wA
         erB+4zQa9Y3eIz+g/3xvokknehAjYYxZW6rbFdcpgVP6Ad7EGVzUU2t/H3UQeOBVVXVn
         ya+Q63OeJoirWd+6pB2NB+c2hpG8dRupomUYlqFK0uyFZSccXhkcXu1yjALxNwgWPsBA
         oKqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Lrn+CPnW;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id k18si201183ilg.0.2020.02.13.14.18.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Feb 2020 14:18:09 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-229-DupnYgKvNvSJ6uPJg0My1A-1; Thu, 13 Feb 2020 17:18:05 -0500
X-MC-Unique: DupnYgKvNvSJ6uPJg0My1A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B2E318A6EC0;
	Thu, 13 Feb 2020 22:18:03 +0000 (UTC)
Received: from treble (ovpn-121-12.rdu2.redhat.com [10.10.121.12])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47C1C1001B28;
	Thu, 13 Feb 2020 22:18:01 +0000 (UTC)
Date: Thu, 13 Feb 2020 16:17:58 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Fangrui Song <maskray@google.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] objtool: ignore .L prefixed local symbols
Message-ID: <20200213221758.i6pchz4gsiy2lsyc@treble>
References: <20200213184708.205083-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200213184708.205083-1-ndesaulniers@google.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Lrn+CPnW;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Thu, Feb 13, 2020 at 10:47:08AM -0800, Nick Desaulniers wrote:
> Top of tree LLVM has optimizations related to
> -fno-semantic-interposition to avoid emitting PLT relocations for
> references to symbols located in the same translation unit, where it
> will emit "local symbol" references.
> 
> Clang builds fall back on GNU as for assembling, currently. It appears a
> bug in GNU as introduced around 2.31 is keeping around local labels in
> the symbol table, despite the documentation saying:
> 
> "Local symbols are defined and used within the assembler, but they are
> normally not saved in object files."
> 
> When objtool searches for a symbol at a given offset, it's finding the
> incorrectly kept .L<symbol>$local symbol that should have been discarded
> by the assembler.
> 
> A patch for GNU as has been authored.  For now, objtool should not treat
> local symbols as the expected symbol for a given offset when iterating
> the symbol table.
> 
> commit 644592d32837 ("objtool: Fail the kernel build on fatal errors")
> exposed this issue.

Since I'm going to be dropping 644592d32837 ("objtool: Fail the kernel
build on fatal errors") anyway, I wonder if this patch is still needed?

At least the error will be downgraded to a warning.  And while the
warning could be more user friendly, it still has value because it
reveals a toolchain bug.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213221758.i6pchz4gsiy2lsyc%40treble.
