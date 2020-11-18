Return-Path: <clang-built-linux+bncBDRZHGH43YJRBV6T2H6QKGQEJQ7UZXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 524722B7302
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 01:24:56 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id w125sf133895oiw.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 16:24:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605659095; cv=pass;
        d=google.com; s=arc-20160816;
        b=yUEpNesM7EA5KO0Y+ZHNqmlzpWHa1Gx0IUisWYW8CJCTqfeYFWtMumGhxTzuRQ/gIG
         nWWrhm9dbD8XvrsUkz3ydy3j77BX2PasbMhqqJ1b8YvC3qtf7BmImyZQ78DXrmxG9fEv
         AgrGCCJEXUKRxnSDbqddayQ8i1h1ZrgISquKoAupq3wK4xncnrXNtH8MXRV/qtklr7iS
         wk+YqUUFIGfhX4kPQWuFW4za25jTT5X+Tbg7uw1EiJob7gU3ivlwEHc3auBjKv88LJrE
         uNuojgQ0UCseMfjfrAwGcCtrE4iiDYnr1Qun/haTDBJso/86EIKQ2ZBksZshBJB2VBJX
         QXNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=DFpLY7ZP6MIMf2tvJO3eQFst4V6Pt7jXaDV8G2omnBc=;
        b=esYz50Ujplg8Xf1rHNn+Gp05x1qFRSuvBmV+jo4DMdz5d1b2SHILD1r32LHLWNvVzU
         U3BGUb3Hy7iVZqkgzj0fXJ7HcTgPqUv99o9CD7Gmj8DtiLWpIPf94oQraJlUkGlWoVpn
         q9gQKLHdojnPVQ0tE2zRhZmtU8heFjvf4aEIsAjR9HB95uzKYS2We2dawlxCkBkpTF7I
         TyAfbBoL5n1JZvRSO9J4iEwnqwy0XsHy2MlSqvMunIAumiC1Q21uI2An/sFC24QNPoZ5
         5GBMXoDtXw7F5lZytyiBpUzkfeButiJcRtrXsJe8I0z9mWihsVzzro+0Ldl3WnjwMpLk
         /Ztw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VUG0beWy;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DFpLY7ZP6MIMf2tvJO3eQFst4V6Pt7jXaDV8G2omnBc=;
        b=KdCMXYqte9l2a9AjL5b8OcaKrqVtH9XxTiSIiK/wK4LCMut0/GTnp1yeyqCw9Ty5Ou
         icautJOZnF0aESQ4u/p9AvLyOfMAE5nVwUqCR7VF6PCjYTgUQw3vCE8fSWH0Z/hNTj2M
         7ZzIEjKFq4GH3Zdm1l4nTV1c+YsMC5X18hnE/2q0L9YDwQ9EWOwV6R1AagOV8Zn6p3aW
         4qt4WC/1V/54Y/wROM5E7imwlNjsAR/ceCM4drS7XsRxnp3yxjGlkqEFikxuYD7sJu5S
         ljYB1xnNNaOae8zMXopj7RThNvZtdBTr0JxHR4icWx3RhFcSnvu5DcBxzzjtabeoFtI7
         1PgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DFpLY7ZP6MIMf2tvJO3eQFst4V6Pt7jXaDV8G2omnBc=;
        b=IgKxvnAIr9pTL9sJQ5v0bsuiqGBazQJ+wxgcpBdm19O3F98BmBZEk9baf7GdAjCfyF
         EiH/W3VdlT7V1Tx52AVNWmgwAIEA9E5e7ks1tPXct9BJRuz0wVw6WnfRCd9D7Pnobalp
         DwrEAFZqeD1udPCVrxdZ0oB1hHW+BoqL/MZFejSBDVDBf1wKxavEQS+gOZACqKyiXLEv
         JeizWqmhkSRT61ep1yNh9l2xkUS+Zr/EH7qZG57c5DHdmu7UNUP7Z9CTwKo5nTP1nly4
         UJSE0wXuk7tXloDMARMETJDqHbzqGpqpMY9WYWiU8n8Q96voJ/ksHd8RHc05wqyIBPBA
         CnxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DFpLY7ZP6MIMf2tvJO3eQFst4V6Pt7jXaDV8G2omnBc=;
        b=ar1Xo8qi9gRNqQG9NmNzn8uLyuRxx/jQkgtPo4lPqaUh2tFXXohDGP28AuNsIXOjPH
         WCn3BAL9ZsiahcB6UlXHbKJRl0Qwvq/tavJ6SCMN+UxMGqACSsb57tWS2LVpNwd4VwhI
         gflWUqbuQRLk7kuq/s2o590orLEiabsFaGelzJRP9ryemFkf00mgy03vXkvZqeQ4Tis0
         AyBjZrBABG5GBf/3A1uYRHb/UT2c4NcwsboIsDRMPsJMGggc+z19Y5GGoOF/5rTUYAX6
         mqfyeO4Nu/3PlZTWtvA56fJPVLNgtT2Ct3IggIgcEFPbDtGXHFAG3MakljL50Qx/ODEO
         sREQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Fvp3hK7c7R9CDSdlImLpjAngtBpdpRhJ9AHTpClQXhMYzK21H
	s1FvKiNEies7/ihNE65Kzbg=
X-Google-Smtp-Source: ABdhPJwd2GrJ0Ja41d7fr+77tJSnUSX+3FH56z/CzViOfzj86qDoBpYyjwroBqH+C6DguYLgvLLivQ==
X-Received: by 2002:aca:5742:: with SMTP id l63mr1176059oib.166.1605659095298;
        Tue, 17 Nov 2020 16:24:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b784:: with SMTP id h126ls4422743oif.3.gmail; Tue, 17
 Nov 2020 16:24:55 -0800 (PST)
X-Received: by 2002:aca:c554:: with SMTP id v81mr1158632oif.143.1605659094933;
        Tue, 17 Nov 2020 16:24:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605659094; cv=none;
        d=google.com; s=arc-20160816;
        b=kvKLfsc1yB01a7ZhBhZZ90H9kW5Z4FKwa/GhZSuD8YE3gzWs52dT7qrGa9UYdGORY+
         P5APVh7zrlv/krmrYvQlgvhsScaVbKM+T88bW9lbk5hVIgVCpVBygWGcHUXFiF7u6VJb
         v7Fh1iVMxdwLyZ8L6maqKTqdZSh5ZshnKCTvj7SLU8Zqz1cUTVZfXXcuzof0HLlQSPcC
         vEIVSimSYj7utRyVuNWgYc/JrlseQhWc9YmLqNL+xRwY6ZPBjOf4xf4VY3qTMnlvmlkT
         2MJxJaRdSLmF9jzZPyY/qBUlTD5HlQD610tlzVbXtqSoXOirgEGsSdLR/lM28eXs/AvH
         MoPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0huT1R6YxHvGQqjy0+YuKw2JldEAQJIjUv13qFD6dSE=;
        b=UU9WJuHoCa3Cvs+dWvrAFMf8Bn88suyBUhj/7igKuKm87RsAc9k7sCfNtOqg7li24o
         wQWxxZziTg05BI/9GA8Pg2MFT0LyrKJPLoP7ue6wRFeRpb+6FJdW2zjfIaAsQ6mPRga2
         TaCDp+M9pkMjjjo9YP8VFfmleyPiXG/UqIVAoIUj7jBkVVgHuQNEdNnqrlmxZMjxVJ75
         oaDjAVCRQy+tRyi+n5uiqvngnmlh/BGf/F/m6EboJvrDwRDRPQdkrp1bE9msV1iBkvVP
         Fl6yKSaXMx+K19YDrQliydDNJ/VQoffRYDZ/LMjmnuJ/oQglRsH+fbeMshVhS8LQPSqC
         LCyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VUG0beWy;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id f16si2211747otc.0.2020.11.17.16.24.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 16:24:54 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Received: by mail-yb1-xb44.google.com with SMTP id o144so11835998ybg.7
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 16:24:54 -0800 (PST)
X-Received: by 2002:a25:61c5:: with SMTP id v188mr3618112ybb.422.1605659094582;
 Tue, 17 Nov 2020 16:24:54 -0800 (PST)
MIME-Version: 1.0
References: <20201118000751.845172-1-ndesaulniers@google.com> <20201118000751.845172-2-ndesaulniers@google.com>
In-Reply-To: <20201118000751.845172-2-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 18 Nov 2020 01:24:43 +0100
Message-ID: <CANiq72=jEx5o_m72WoeRq9r74YGtedK4AE=4b=j2zS6M60ESaA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] powerpc: boot: include compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel <linux-kernel@vger.kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Miguel Ojeda <ojeda@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VUG0beWy;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Nov 18, 2020 at 1:08 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> It was also noted in 6a9dc5fd6170 that we could -D__KERNEL__ and
> -include compiler_types.h like the main kernel does, though testing that
> produces a whole sea of warnings to cleanup.

(Re; for Gustavo to consider since he took it now): I would add a
comment noting this as a reminder -- it also helps to entice a
cleanup.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DjEx5o_m72WoeRq9r74YGtedK4AE%3D4b%3Dj2zS6M60ESaA%40mail.gmail.com.
