Return-Path: <clang-built-linux+bncBDD4ZNHM3QHRBCEB4SBAMGQEBFXAYHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF1C3450F5
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 21:39:37 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id j26sf138109pgj.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 13:39:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616445576; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gt7hcQIFTxiiRqSwNjbgfM5dOoIRc+OmTBQ0ia664FSXw0wHuBrdAejbJddPPF/VbE
         ko7roAqXdYg4RabM1hTUUCRsKUbYvQRoHrUPYHFnhiUVil0SWc5RGGuARCDRwJaYGaTg
         /GJqcJwYYdbfaGwmv04fGwgpHE2Nr19zaT6mT8s8/Sa887VLPmqdf5m1T2LTh7q6LhlG
         PK4tHt0AEp9Q6OGKmw0kwrlImXcY0/UYL52+B61s5Sne/CqlohY+avTRHdRzNYJfdB+G
         8SVDnac9xq850fPY9bnA0szvmppVVMmunNJQ1IFqjCuR3rmq3rfi7S0OGwuQ/kryza2E
         q5/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:sender
         :dkim-signature;
        bh=7AKrriBE5AiDNEStOI7QDZM4wauCOgk0jbiYcU3rWTY=;
        b=DDHEBEfVe06AFh1Y8RUaGiDfHVwjcmQ1ewSxw73UDHsmEld6MQ2Na85+C+t21QPO6E
         G3/QYFp+ejBSAI+7m1ly2dvxdcc8yRBlbYKdS6Q+Z2sFfq+AOCOO2Xv9MprSMPhMkfPS
         lEzKlPhI6d0/Qmvf0kdLKhtmLWIbAbQFw6Okc5Ebs90R7eSKvtbS69CVzz3WcrbMBrhr
         UOyUfFS9I9yBVUNj/4N1UiTtKg2Dt9UF+aULGaK+vw6xUDU/x9H7uj6rFXxofoIFu+Tt
         UIi3pmXr1GJer+11RPn5nBgYNBFEL9nw6MjaNQnNq77+nFbyh7wF0QLZvX0I/oSns0EQ
         g0rA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jemarch@gnu.org designates 2001:470:142:3::10 as permitted sender) smtp.mailfrom=jemarch@gnu.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gnu.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7AKrriBE5AiDNEStOI7QDZM4wauCOgk0jbiYcU3rWTY=;
        b=RXFb437q3o3sIwokQtmvoTvBZR/43qTDUplTm1EeD71Uss1lNrdILdyWOjd9o2VLQx
         c1xQDqo4l0AUkvfRjva0UzgQLqPMcbbMwD9KpJzCeVJNGOwYLV8SYBd/JHDS0VWyVUfu
         UJBxPfD48wGsRXXtDQuwSKcyS6PU9SWLAeZof276FECUezgsB2zpq8Wbn98PM/8gG2Wd
         Ib2C97AcMQqC+QmgopbDu+nMZYIO8S6nb0JucvJsaNkI+VfckoWUw68XkfdUAGE56s84
         knZxEb7j6p4Lmx3KAYk6o02LVdgxS1loU95hn/ys8Y1dvFfwhD+CsXEdUBtbYHF1cucf
         aRXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7AKrriBE5AiDNEStOI7QDZM4wauCOgk0jbiYcU3rWTY=;
        b=UNZ57Q9Ss31PyUlVGw4ZxqjR7oAqi5EIlG79yKSLSI1wljUHnyEh3IR8UGpuQtWf3e
         kRw0GJidNpazsMWclvR49mRI5/gaf9HRv1+9N574RdmDfD3dnzaEExdlkb8Lwm6r1gIA
         tSWUJtPBMqSIPnWnFdSsfbcKvBeBXUPX21VUOzYiJdZzda29aktEifTlauLBMbi7leQV
         7BT4C5LZ4AHFLb4oHjPFROEca/FGvXjsjaG2wDJjb677Ahqs8O66izYdZ2JtwZNFQfan
         kjDmKzdGCi8WWW8fhcTZV9Heebz5/i/zrQRLplyv/Nhwf91udn7gcMuobqjRlQR+PAFK
         cvmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53228YxK95o9TVpsRd9bzstnp32wAO3ZMkTUa5s4QyexAVeLdg1+
	TTf55j5lHJbEizJO1Lf2vCo=
X-Google-Smtp-Source: ABdhPJzXsHXqmSQWTT82JftB+CZjWSH+MUVYvu0N5y3kjIf620JujvMXYrpbZFNOkBD0eMP4zaz/6A==
X-Received: by 2002:a63:cc:: with SMTP id 195mr1155625pga.282.1616445576314;
        Mon, 22 Mar 2021 13:39:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a507:: with SMTP id s7ls7208264plq.3.gmail; Mon, 22
 Mar 2021 13:39:35 -0700 (PDT)
X-Received: by 2002:a17:902:c48d:b029:e6:f7d:a76d with SMTP id n13-20020a170902c48db02900e60f7da76dmr1465846plx.66.1616445575781;
        Mon, 22 Mar 2021 13:39:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616445575; cv=none;
        d=google.com; s=arc-20160816;
        b=LAiTFxrtJ/HR67EG6pK2r/SpCY5pjZZAiLPl7mFNU9/hHUrurFcyogrzBAVXShLIAJ
         YUmKPfuZUbVjRGsXvOoU2VL7E/LCgfPMf8GKMmasyvrnT2V+p5HGSxy02oW2vdwhsHjW
         xwpESWVjtCLa7BSjKzjcteyVTE5Tc0B54u1kGYajR/RG/DJ8ZtOdIJvss3Qvt3LFjkzX
         Phil/qGwMz0OcLSsUKFPgnu0PumDgHKWbKITbTGBaZY2+0npFaDmBPmhVV0zs3Y6nBmh
         S7oRNNaNZEk0KJLTwT6tnyzKs5e9yZkEp1whiwNxHTiB8R/la19VVBOBd9Z8V0R1CBU2
         bUcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from;
        bh=Al181c6nvVHBpv1nTZgtcxSjEmhr+9j02KozFuKBChY=;
        b=xsa9XlMigqSOWHNVEuArxhirc/NmDfIGsxW7uUD5yibucADKO7IAXlvr2RAC5xxk6Y
         7B5Nlt9znIsZSPGCVFi904dOKo+CDCFDq9w5j/8G0w7cq8GcilZBGQRVxPkh7NRpqr3u
         gXPZiK0tJ8KIam9XPZYs+DgTcqcv8NuwrBI7COjLeNf4CjmkMH1XnlsrKh57fugP0RM3
         dgCHS76ZuDRZMA+AlKVaxyg9TBYhDHqJdQl+S/HEsftVgia1Ky5Sg7xJ1Tyoo40N2Dy0
         hYjD1/rhFihZkIUEkCcIvLmslNd0BzhGHyz5vvV6P3U+cLumlaWwebezEzppp8BOHGlV
         fQfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jemarch@gnu.org designates 2001:470:142:3::10 as permitted sender) smtp.mailfrom=jemarch@gnu.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gnu.org
Received: from eggs.gnu.org (eggs.gnu.org. [2001:470:142:3::10])
        by gmr-mx.google.com with ESMTPS id 145si768181pfb.0.2021.03.22.13.39.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Mar 2021 13:39:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of jemarch@gnu.org designates 2001:470:142:3::10 as permitted sender) client-ip=2001:470:142:3::10;
Received: from fencepost.gnu.org ([2001:470:142:3::e]:39443)
	by eggs.gnu.org with esmtp (Exim 4.90_1)
	(envelope-from <jemarch@gnu.org>)
	id 1lORKk-0006DG-BD; Mon, 22 Mar 2021 16:39:31 -0400
Received: from [141.143.193.78] (port=15874 helo=termi.gnu.org)
	by fencepost.gnu.org with esmtpsa (TLS1.2:RSA_AES_256_CBC_SHA1:256)
	(Exim 4.82)
	(envelope-from <jemarch@gnu.org>)
	id 1lORKj-0002mF-PP; Mon, 22 Mar 2021 16:39:30 -0400
From: "Jose E. Marchesi" <jemarch@gnu.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-toolchains@vger.kernel.org,  clang-built-linux
 <clang-built-linux@googlegroups.com>,  Steven Rostedt
 <rostedt@goodmis.org>,  Kees Cook <keescook@chromium.org>,  Florian Weimer
 <fweimer@redhat.com>,  Christian Brauner
 <christian.brauner@canonical.com>,  nick.alcock@oracle.com,  Segher
 Boessenkool <segher@kernel.crashing.org>, elena.zannoni@oracle.com
Subject: Re: Plumbers CF MCs
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
Date: Mon, 22 Mar 2021 21:39:25 +0100
In-Reply-To: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
	(Nick Desaulniers's message of "Mon, 22 Mar 2021 13:23:03 -0700")
Message-ID: <87o8fa3oua.fsf@gnu.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.0.50 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jemarch@gnu.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jemarch@gnu.org designates 2001:470:142:3::10 as
 permitted sender) smtp.mailfrom=jemarch@gnu.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=gnu.org
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


Hi Nick.

> I saw plumbers opened call for microconferences:
> https://www.linuxplumbersconf.org/blog/2021/index.php/2021/03/18/cfp-open-microconferences/
>
> I was going to put together a submission; do we want to do a combined
> toolchain MC, or have distinct ones this year?
>
> I know in 2020 the GNU cauldron was co-located with Plumbers, as well
> as a GNU Tools Track MC and LLVM MC.

We are actually discussing in another thread about abusing LPC's
hospitality for another GNU Tools Track this year...

Regarding the micro-conferences, I would be ok with either combined or
separated.  I think both approaches have their advantages.

In either case I'm up for organizing the GNU part.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87o8fa3oua.fsf%40gnu.org.
