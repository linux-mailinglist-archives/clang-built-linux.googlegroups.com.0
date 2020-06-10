Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBDESQT3QKGQEENZVHGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB581F58F0
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 18:23:41 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id q5sf1392707ool.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 09:23:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591806220; cv=pass;
        d=google.com; s=arc-20160816;
        b=q1VG+3QzQbLyKK1ZkXa7xE5l3hY3Wp04CkStPbeZcmw6q5mIwpEZsYTEAoEN/aHu/T
         cW/OdTZC5T/4Q9Up2Ff1MxDTgDERF8iT4qdFLqpNHsVm1bVtWASS6dtm4soNXIU0PKPk
         yscGaXREsF/ODnpe0u8yhTmy9iy8Pp7Wd4Mtf8O+9ukbHmq0kQiX4j8Snu85m4lRd3Rr
         Dv8ektQl5KBdca6XVF0J2xgLeXTePck+heVZH/kpoNsrsF+S6YZasIlRgfm7DjO7LTc5
         8Gtqjh6QCbv+fdu5JpjMTC9BVEZsgrUHyNOvma9tUQUHlV7tlq0pJ8/mQbdGiToXm80f
         OnaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=bdLc2Groleu/iy0CTPx4wJb+SO9tFsS9azNpeZCStQQ=;
        b=NoL8Y3F1mQjrfjQLxgpwBctX94DTqfV/5tCX+dRdQqRT7fq1VXKiV20VC0zeEsIyvM
         Xfr17j2mbcbWfciN5QUZXblbtZr0bDOhS4fhm+aYKguOttgYtlMII6lAOO5EFAJK9mWq
         8vI9dVHI9mRtf3sYsAuFzVjJ4drvbxDmVbvwuDS4gLZ8Alh7RgGlpRfUA/2P6eSPykF/
         /oEFyZSvJHWh5kRJWf3XGfNH3fFmJbcEtfn9fhcKaZkgHCLi6fW4cplbVPEqj7U4ZE5k
         T+Wh+2+laAGC9BLGfw2gS/qjOFhR2V45SRh2VXZTcvU1YtxYdOJNAnM2JVpEgGU5ZxCJ
         r3pA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YrIvR5rr;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bdLc2Groleu/iy0CTPx4wJb+SO9tFsS9azNpeZCStQQ=;
        b=SayS+coYynFNmIpgI1RZx0oIBc4bz0G9/qVkcPcKRw4HdxOkHDS2JLWJOd0aPo7Dln
         UKKG8mt+UzUOthw0l9NIEoGbeT3loazaabehbZGAbTVT8d8JdVx2dQBXs5auWCw4x5iU
         XIcsDFe34b8RtSD6zfyt3EKQDqPHb9xoQ3ECk+rLFc3/ImW9r3q9yHQGYxR99OOb5v5c
         oqT42ZDb/3I14B1y+/qPaVv6L632KFQ2ZlI1kr5roa4ic4axU0PmAbye2OIOkft+X3/3
         NauY2daww6Q1K4D1qUlfypYaxKemwZexTCX7Fil92DDBsR5VqqiovP6m/9W89BeDNB3M
         mtFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bdLc2Groleu/iy0CTPx4wJb+SO9tFsS9azNpeZCStQQ=;
        b=UWvt3f7XB7RH5rep2if/QWY2dTHL5mwfSADzMkLGV1GA6R/4cXArET99ZqeXp2QHGJ
         8y5htPCwOcukGBn4BSkDudNdKnnxxsdNOpTHah0B5bjNknPR6tRDtxAgEvXteGEVydYl
         r+pNr1KwHERPW9989MmNLvCsb2f5rrKM8eMp56UjFPcCtmNX8sIZLucfC5ELTpq4UjRZ
         d+9r4ARlzjYb27Pwre1yaqxQTluivV2mF79NNc15bLpzJ7Kbj+VCUY/G7K9AsEQOSqXH
         a4LWmX1NcuUBnozKweBK37Y/Imtyf5hEUEhCWAUtMhZCF+Lx7sofV3Y9ancCboxr1Nbz
         nPfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bdLc2Groleu/iy0CTPx4wJb+SO9tFsS9azNpeZCStQQ=;
        b=Dnc8Bfpe0ovqk1w2uYL3zMRuVmLgZof3bd3tVDNOqckU+WwArPNhzUibzgD5bCq65B
         2shBwQV4LpT0LFm8FXsq9pq9+EF6QPleCqejXeOYwYmUXDnKU/06RnA8V7K8GrVS41FS
         9P0BJCA0yhXbtWCH9qJElh7M7IJaZNEkUjygstiebCILqU6n35heolDfhD1cZ+wRY3aC
         hcFHm6V4KVX5pDbcrHF2fy5C//jqPBur20woJBezGDdsBt2LzWed/6UBbeon6RcUpY01
         /2EJujyhAPS6STMNkj2Vy0IQWlnJny/R2Be3d5HS16KOvkTlCpC/kjpkiCCbEP5lRwcw
         24IA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hiedlijNpZEviqjLVkZNSpQVrUD7XfFC291Td6jUjKku73nuU
	zwATqUWTpx1jMTSlTfjiWUk=
X-Google-Smtp-Source: ABdhPJzW/MoVUqkeyF95mx14Ed/23dzkzMcROSfttzMh79h7lMmRDmLXsrWNyVrEFaNUmJox8y9/HQ==
X-Received: by 2002:a4a:9487:: with SMTP id k7mr3129815ooi.33.1591806220156;
        Wed, 10 Jun 2020 09:23:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d656:: with SMTP id n83ls4758694oig.0.gmail; Wed, 10 Jun
 2020 09:23:39 -0700 (PDT)
X-Received: by 2002:aca:6708:: with SMTP id z8mr3091813oix.96.1591806219843;
        Wed, 10 Jun 2020 09:23:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591806219; cv=none;
        d=google.com; s=arc-20160816;
        b=Vsg3K57+d2Q6ZQsBDiHzexk59ZVsSMPRBrpF2+KKFfRvoW5Um5y8P8h/g/sbA2sYjU
         m5W6qviD5K7HfmC7K+ZgRG3pwRmcZu11mvXSuuDmTQ62X/PUyQ0LEydl4LHZgdSahUAE
         lX7Mfv4pQkk13LcIWPjYc4ZFBzm1yuSyk/DKYdxnaHneks+HUOC2xKRO0VkuxTYKWzjc
         SXg1YxUsp8uO/rr0siSQT2uVOJ3Ltji2vTNitUZ2daBjSmgGvMRer4+A6vx7Ebum3oDZ
         uVjRxPku2ntuB7ik+C5R+rmSHypa90Kap1tBLBfbxYq4iBSZZspv3gxC5Leh2bIRZBLa
         jj4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8r6t1BgudKZLnrzWDpOZuoosZv5egz7G/h3K6qL0zdU=;
        b=Z1Yh47xHqgkl6ZWiPO9A1AE+0XvaqY+kgKY6A1OrbYHfWom0f9InzNeLrKhy+dz3NK
         SzM1Owsl6vp7JDqwJwAszpfyHc91lw83B0WlDZaPS7egOcBUuut6gbR3tffnzmJ621Aq
         qVdD+1uL3sdDrLsBDq5FXUgvKfrD7TqeSnEzuMS5/znES0XuBpZTnLLgF72piO/WF4RZ
         AfYX7LQujZ9HI69PNz2wYy+TllBDIJ4PNF8VRGaYCjHPrC5yBbwiUc8ANQ+qpK77ISoh
         1a7NX8U8c2xFCE8eWHYmha1VTlpUtq4MvkYxVOofNqpqUhYWiVjc3hhFVYf0Ghri1EZI
         M7Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YrIvR5rr;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id e23si47229oti.4.2020.06.10.09.23.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 09:23:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id m81so2899270ioa.1
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 09:23:39 -0700 (PDT)
X-Received: by 2002:a05:6602:2c45:: with SMTP id x5mr3999023iov.80.1591806219542;
 Wed, 10 Jun 2020 09:23:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200610125147.2782142-1-christian.brauner@ubuntu.com>
 <CANiq72m_p2BRXswCGhUZi-Nta2y0uNXDQLRjPUFydB7YGV-6HQ@mail.gmail.com> <20200610155836.GA2360592@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200610155836.GA2360592@ubuntu-n2-xlarge-x86>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 10 Jun 2020 18:23:28 +0200
Message-ID: <CA+icZUVxfrWCZ3JYT_3hT1iN3Ph0ZArJxTpjxVBNLRi7LvGFnw@mail.gmail.com>
Subject: Re: [PATCH] .clang-format: update column limit
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Christian Brauner <christian.brauner@ubuntu.com>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YrIvR5rr;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
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

On Wed, Jun 10, 2020 at 5:58 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Jun 10, 2020 at 05:55:14PM +0200, Miguel Ojeda wrote:
> > Hi Christian,
> >
> > On Wed, Jun 10, 2020 at 2:51 PM Christian Brauner
> > <christian.brauner@ubuntu.com> wrote:
> > >
> > > The provided clang-format file wraps at 80 chars. If no one minds, I'd like
> > > to adjust this limit to 100 similar to what checkpatch (cf. [1]) uses now.
> >
> > Thanks! Picking this up with a few changes to the commit message.
> >
> > Cheers,
> > Miguel
> >
>
> If it isn't too late:
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>

Hi Christian,

just put your patch into my linux-5.7 patch-series before start building.

Feel free to add my:

Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>

Thanks.

Regards,
- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVxfrWCZ3JYT_3hT1iN3Ph0ZArJxTpjxVBNLRi7LvGFnw%40mail.gmail.com.
