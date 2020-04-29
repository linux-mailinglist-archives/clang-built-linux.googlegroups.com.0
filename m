Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBFWOUT2QKGQET5SPZGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 682441BD55D
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 09:04:55 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id 17sf423747lfo.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 00:04:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588143895; cv=pass;
        d=google.com; s=arc-20160816;
        b=GSGtndZK+97axktukNHJgp/G7dwHh9Oo908SpTezMjsxP2Ad47hEnwLSZzrxEbOlxM
         L5xgy9QHMAlgE4VCgyXyhwdaL6ycMMvedVfgvJVEOP28RLVMFBr8L+qkfyQzRLSkPhfl
         MaKv7pmtJ6OTNRmTW4Eh3saTlMflE5g3+mw04cZ+c4z9WXsDqWs9ECpFj4DuGcGjmFY0
         4Tabs2RiWFa4E92oacUhtlJbaYvG9Q4LVqcphBm4nhtrhqDpw82YUTVamzZwM6mjzQco
         DzZ5rGCqwmv3x8SGe3gfRSWOdfaBNArHqQ2o7nEwfCDJNxCW0qrhdveh5nRkj8tBKliM
         Ecvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zC1JFE0kKqMDS7SCVGlgzDuKnTHmhRxAoMzElgwV/IE=;
        b=PT2ztyQEvIvsuj0/PUzehMml/D7EhrdNPuoBUI7c8BsvZE/uUuaUvDQzTzLuzfhyt5
         IFPqMAakMV+dW9lLgs4zXYcDO4Iu/rX1zpSF3d/MJg55tVCuzq4iERYwNasXask1/UNE
         VXzz/gUaRqUaZCrm1E9qGpuQFyAjBtB17Y9S5vlujldNfdyTfV4JeNe1oOfMtInt+R1F
         mqY2HNZD0XjzTuKzhF1yfS7ezYMgFAdmAU4FClNw6fTQCglYx3S9lvNjoPVzg45lVcpd
         O6yGgtBvN2NAqvXBOw1rNSXo4lf+vIoGCuwYRGaDY8kE5bqCx7UrxQyzH5xk6X3uELy7
         6bXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tVreQPq4;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zC1JFE0kKqMDS7SCVGlgzDuKnTHmhRxAoMzElgwV/IE=;
        b=nGlSd2qohxf1oplDz0QWptlRZfrOpvmzafAuevA2tVedsj0ETO5H3wqeoqqymW99eo
         XdRKdza27BcpY0nCnV0pZ3dgyKMQiDqNnjcXTVqCVsMdxPr6Lan/EAIkC/fY5dDtwjLi
         LWsUHTViIVuQnAoNU71y5gU4ISGBNRf6ZahXlWuPG0AzXvh1fAHGuHnTMLOAUP83Vp3T
         wmYd447hjE1xajJKijlSArZr8Jntxtp5G8HbihQWxlzb6QQLOpIjDj80XrR8lD7oL/B4
         olRdSpVyFQ3OlqJVca9sgxZwX05kwf1tDyOYXvq6LDYmeYTNgE9Ycef+ETfrOAtS3c4p
         80GA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zC1JFE0kKqMDS7SCVGlgzDuKnTHmhRxAoMzElgwV/IE=;
        b=M7N2c95OV4Mchq1ixUOi94VQ87F1k+u1qilg/pfCZ4Ay35+9VHtvcCn17thk1m24ne
         uOqf1tA2BoAAk9a7x7c2gVZvtTQA4NOG2+H8mqetFtCZ4dF6CRQYn6V1L+WVi7YdNgXf
         j2S4euMDUF7fFZuPR8vkF3tAp+nutljpir5StMVeSWQWI7QID6RH+NkcLTaAhKC20HOY
         im0KXDIg+gVJzN/t7DHfU6uIziDmdlhhjdX4mTYMjyAHeKY5vGnAXC29xq4iOWpPjSJ+
         4AVRvsSp0LToS+ylVaGfHp1v5PyCfup52URHd5Uxu8kRO1MSxAf8Y8ooeTq6C8Iyn3Dn
         RFjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zC1JFE0kKqMDS7SCVGlgzDuKnTHmhRxAoMzElgwV/IE=;
        b=HMcBR8Tp/NF7wD0HCGf/KDPMoX4rZRAFhYoqO4oz8V8oFt/FwiWSASlkIBazdTUcxb
         xLNTlqL+HTTz/TqKLK/MTfcV9vLxNCm/R2tpqlJO5bLORRfNSwRu45UF3uIE4bhe8+UN
         cEVNjR2LHB5fNT5lSiLWFSyQ7d+ZbTrod7n2QqNVPogSYTpQ+g8xhL//Y6EpUgdwZkOQ
         n7ugzHA1lwsKWxnhjyHnFc4Caz/EJu8rW52MS/tEUpOCTyOMmE0AuJp+fiVPejAgaEEb
         387+WrOBE/3E/BhN7dlRTFS/5ZJWxA18UWq7zeWYeYnbuVif/1oPXqa1UntpG4GapXxb
         ej1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubpSxEPNkBSigD5A19R5awXG35qb78ZVJWHPzuglsV86ob2YtRj
	5F7/ikhllpI/9xESzOOTDzk=
X-Google-Smtp-Source: APiQypJYwlRzDLlOfNu2L7s2RdN9dIHsQnpYhOYJt5bfYRmgxaHiIkBZ5f46oCt+QxhHSXZjHlkqgg==
X-Received: by 2002:a2e:8999:: with SMTP id c25mr20386413lji.73.1588143894985;
        Wed, 29 Apr 2020 00:04:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:980d:: with SMTP id a13ls3028802ljj.2.gmail; Wed, 29 Apr
 2020 00:04:54 -0700 (PDT)
X-Received: by 2002:a05:651c:119a:: with SMTP id w26mr20102347ljo.53.1588143894240;
        Wed, 29 Apr 2020 00:04:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588143894; cv=none;
        d=google.com; s=arc-20160816;
        b=XV4U6umrjG1mXCywkgmXtOUpz9kmRBSkIqT/r54J42qLIEMEbjSA05kxbk7TKuMBwI
         lcboMoDWqF7EHeAa9Img+mitHV5Don5bvtDTsrsH/k21sTk7DhojJOjI3EHJTWNOwXkc
         8RIgD069LCY+5eP8xhBL4Bh+JgdtTRKBpuAxOlg+7a3XlrMzQVu8rDoHndAgIArlviOo
         3Du8D/BSTdguwxqYVKAETj5bxspIkzZ7Soqlyb6gunFDTm3t67RBJYzvtLoPWPTxPvTa
         L9iv/6uNmEO2mrjre9sBocKp1oNiub+GxodKm7gYAx+fQ5B/J3yhlsuH0MtVA9pWKtU/
         XUHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lZ6vcTjHNoVR0BCaYLoW2vQQfiZtE3GkLmVwbDb3kKs=;
        b=S7iuk6ZlcR5JuQW4eZBUd7hzaUnKLMgMEDVpGPOINsYAZ9s9fDTVdPhMOWyl8leK69
         AtOoTjOWAK7JldCSnLYOl+MZj7lzDudl7xvHTl0syGcmDc4tMBzeP5FCVomVewCVeIwS
         U7bmEHSLjVkAc1Kr9V1wczqWhecNf7Da9bT3np8cR+PjJFwTStCKkQFXoI0eZ9oGDVyT
         qUp2fHZ+V+olXjD00uleB9fxFlz2t3oNWSEY327cIAoHIwZWo3HJA9rekpugU7/PFuC0
         lp/zMdLMinJp2hfc1orlBp3SonUMjhoRAcISSZr/cyJKeGhz4wEBKp1jMQ7oYclmS83J
         rTfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tVreQPq4;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id f1si82013lfm.1.2020.04.29.00.04.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2020 00:04:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id u16so749461wmc.5
        for <clang-built-linux@googlegroups.com>; Wed, 29 Apr 2020 00:04:54 -0700 (PDT)
X-Received: by 2002:a1c:7416:: with SMTP id p22mr1615489wmc.80.1588143893648;
 Wed, 29 Apr 2020 00:04:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200423171807.29713-1-natechancellor@gmail.com> <20200428221419.2530697-1-natechancellor@gmail.com>
In-Reply-To: <20200428221419.2530697-1-natechancellor@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 29 Apr 2020 09:04:42 +0200
Message-ID: <CA+icZUVz8zYVY3rgT4hS6a11+1Pw6y_Du-hkPra1PkgtLWgRbA@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Allow ld.lld to link the MIPS VDSO
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Dmitry Golovin <dima@golovin.in>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tVreQPq4;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Apr 29, 2020 at 12:14 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:

> Patch 1 adds ld.lld support to Kconfig so that we can avoid certain
> ld.bfd checks.
>

Is it possible to introduce and add LD_IS_BFD Kconfig for ld.bfd in this series?
Most people agreed on this name AFAICS.
What do people think?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVz8zYVY3rgT4hS6a11%2B1Pw6y_Du-hkPra1PkgtLWgRbA%40mail.gmail.com.
