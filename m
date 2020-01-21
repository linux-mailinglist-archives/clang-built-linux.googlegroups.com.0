Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXMTTXYQKGQERNTMKXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B381444AF
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 19:58:39 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id s6sf2367132iod.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 10:58:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579633117; cv=pass;
        d=google.com; s=arc-20160816;
        b=Id8IBm+DCEmg1H8dC6psJQDzE4QluzpL0tVr5qbXIbyB6L1u8nNz9ObFuDaUEzB9GK
         YOZ5E3j+VwOPSmPyg7944KJJJkxV/rHW8bCh+0UMP5v4AremOZ7NraznFodKV8gMTETs
         Hf9INvf9vc+V6GwJTdoR8MCWLOlgK8ijUPxpSSElKfTeaZftEPBg54Bb4GMUiCC9urBU
         9wlgimmlK5kbqs0q+g8cYWzPeQcml71h0GhiJbIc1MTrn1NDymz8tjBC5WSFomiKo4dM
         ews/2230LBaUlhfFTEH7BJ9BtrB6TJ81SD5MxCqsBF9Gt338Ig0tRuzZw7o6yXO5iJWg
         MQ4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=8bjddjwNDXL3HJR7B6qQDF4aw20wCzTq/UB7ap34isQ=;
        b=hBG2niVnS1+kI4cTOk/caR9smm+QiJOfreDF82PAGFGRLiWO1FWfWilB75JIlOak03
         dvNftzsiDHq0vVIGZpdrrEi7CRGHAq/usDr3dy6EW+8+R4PwX6wwXYAPWjhyLhYArJ5+
         q/WuqZbW8Kd8u3JBS2BV5JGfrzkY/gPPt0BFq8gRFLzVwyNv9vxIOQYMl5I2W0Y1rSdL
         +IC4DicFqFt0qFsIIGtbl3zUqlxGnQaVy8+96FrONHedcQbgMut3ajWekgy2BYad+d4+
         cbk8aW6FBmZ8DNPQ011k1FYbWtitWPKsmQ4cj+46GKzVIqOnd3mzC0HTUsztgqA5boJK
         qoXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KS4/gjFX";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8bjddjwNDXL3HJR7B6qQDF4aw20wCzTq/UB7ap34isQ=;
        b=Tc8x5gHK7ybMBqFUeiV57Qzkgs1Z3rlks8uQPPew5CcWWzCa3gb4dWcskt9Ai5BFFK
         mX8aliN3K8FDsGn3derQtp49oscqXB2HCzPOjyTsOT1i4UpP8/V0aTZ0BvmEz+VIKQUE
         iz5J50Minzip6MGVBdLv96ONPoXLpbYZ2Q0wOISOaqNDTWYsGcdzb41U9ccMeXZ28GEY
         EwKOfzPal4w5UzpDo7w3oLWJJBx2cQUhCvRRbDR2Y7sMJ4I19xyYbG+/6/fPab+SJ6vo
         kSeUKai2sSGW7UN7VSFAvZRBYOFasiS7HqkNg2hbObHJT968lS2tK07jK44lMEIYjY9R
         wajA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8bjddjwNDXL3HJR7B6qQDF4aw20wCzTq/UB7ap34isQ=;
        b=aO57kQoVHRekQwABFUE+q2J9JdwyPHUBifsJsP531B8WSNosS0bAvzt2qQqXnQG5/D
         bE8DK3B63YaFhM2Xm1m1/IR9HBcjBr6esTPBacL1iSXQ+V9kQnSsau9c8WGG3pdH3D6E
         3XvX1Pgyrqy2AOsTdLIORfjXLXenfcg5Gg7OAYJwZWOdycFChNK4W9aF7CmLiuY0rh97
         rael9KpjbEXMT0KLqzTJA2gK6yRpD/k5aTVWgLbjtsA2or3NfIpRKN03pUFEBqj1Qglm
         BT8WkyswzOFui62tf+gklcBJSWa+Ybl3Omga9ifiM8E/x2zAvdQBs1Yvb9OKIoL5T3Rt
         /psQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8bjddjwNDXL3HJR7B6qQDF4aw20wCzTq/UB7ap34isQ=;
        b=dBw7YezK0zhQkffW2aoTnpzyWgVlDicfrA/bFq2R9QtruYPLWp/gN4vsKpmdmnRTd6
         6l67vBZhK57BQKsAxYUtzOhpB596wse3gTnoFuHo6lo/L0r8H8I5ysGKt7tipWjgSp45
         WfiGCzEZLu9WBNVijm8JNAUjmbaxtmz6aRMJzaOyZ5auHpK5z9R/lkqRfAZzAusPkUTn
         to+Hs/55l0rri36UXwz/c44h1mzp3kPRUry/+vVwiOV+1StDb/Kfx0RDzw/QKck2aUjZ
         85lF01ljXddsX5XwCO9BzpUOh8lS7rVh2rS325nF9X1y87V2BmHKzO9XxoTjvthKluHh
         zLmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV0YRuY07rroo2duVROJYGjmK0a25el92IhmlxcG5hHPXDTdKcF
	/Jyy3DheHO3gXb0NWuqIkjQ=
X-Google-Smtp-Source: APXvYqwvcFzti5tssGFjqrkB+PK/Mv2+VbtTwJEkwUo29+luXn7jx+LIL1/lXe0qVtXo5BpkP6u5uA==
X-Received: by 2002:a92:5855:: with SMTP id m82mr4819033ilb.302.1579633117561;
        Tue, 21 Jan 2020 10:58:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:8f2:: with SMTP id n18ls6411679ilt.15.gmail; Tue,
 21 Jan 2020 10:58:37 -0800 (PST)
X-Received: by 2002:a92:1d95:: with SMTP id g21mr5018792ile.291.1579633117197;
        Tue, 21 Jan 2020 10:58:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579633117; cv=none;
        d=google.com; s=arc-20160816;
        b=lMm7T5htGSSd1r3jdd03GGqYKiriQqBvCxfNBWddUHvF/a1r9AoxeHe8M82xs4yZph
         Ki/sjVo1/ePLpDapBWwC4HA1GvIAgjsmQ8aMb6pyHffGJgs6PB87ig7PbQybLXlO32SE
         Tbg7IFUF/aiua+QmMufqtdRhJ61adeK1zb9EQtZBZA0nRPHkl2LDQ4NsLclc6JRZaOMy
         jBTi1Wgx+Lm2CddGwvjttniVFGQQLnYl8aCV0PLXwOK/buzvRm1Gzwwd91hLeKd5Fq5W
         e9jzldRlscUTYUgm7Ca6WHLnQLvaWc5clrMsGI/bujs6g6jMRc25dQSH2hFUaVJ6A50e
         Ljjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wImdtgcbSrkhoSK27g0eKsb6+1rafcjtO7KTRZ4V1r4=;
        b=qe0l/iAEFQuwpoTWx+3oww3zzUsPXt4eje1UodA9qMI551UhkytptSbnHH36hy/UkZ
         3U2H288NTkap+6WNgJdXFW6wPRiTFcUSN0j7GfLSOlCefYSOp1QaSSTDyyiLqlgpROkw
         ORFrP9Gj9l7VqxRbsP5EK6E53JpN3VyPIaXudayOi/bA0FVjpfgDaQjTmZKXiAUkjBsv
         ZrVP+p4LpCQQpYpxY0mua7+WV7+fNVAsAXIYarQ9AVuPAbvxHjvALlhpeiAPz3fTN2Ij
         BPeqbCPNXCtXuNjp5vPOXl4K6jwjAtUgblFnxuTVi8pnNBWELEILkGYQm9/DfW531CUH
         8RmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KS4/gjFX";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id z20si1740890ill.5.2020.01.21.10.58.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 10:58:37 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id p8so3911354oth.10
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jan 2020 10:58:37 -0800 (PST)
X-Received: by 2002:a05:6830:1e16:: with SMTP id s22mr4692577otr.340.1579633116712;
        Tue, 21 Jan 2020 10:58:36 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id l82sm12233220oib.41.2020.01.21.10.58.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 21 Jan 2020 10:58:36 -0800 (PST)
Date: Tue, 21 Jan 2020 11:58:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Bogendoerfer <tbogendoerfer@suse.de>, Michael Reed <mdr@sgi.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	linux-scsi@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] scsi: qla1280: Fix a use of QLA_64BIT_PTR
Message-ID: <20200121185834.GA3941@ubuntu-x2-xlarge-x86>
References: <20200120190021.26460-1-natechancellor@gmail.com>
 <CAKwvOd=30bpBXqrT6LfwDb+YrTcGtTg5NL34dpc3Vkfe11KvFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=30bpBXqrT6LfwDb+YrTcGtTg5NL34dpc3Vkfe11KvFQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="KS4/gjFX";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jan 21, 2020 at 10:43:06AM -0800, Nick Desaulniers wrote:
> On Mon, Jan 20, 2020 at 11:00 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Clang warns:
> >
> > ../drivers/scsi/qla1280.c:1702:5: warning: 'QLA_64BIT_PTR' is not
> > defined, evaluates to 0 [-Wundef]
> > if QLA_64BIT_PTR
> >     ^
> > 1 warning generated.
> >
> > The rest of this driver uses #ifdef QLA_64BIT_PTR, do the same thing at
> > this site to remove this warning.
> >
> > Fixes: ba304e5b4498 ("scsi: qla1280: Fix dma firmware download, if dma address is 64bit")
> 
> ^ The above SHA is valid only in linux-next. Won't it change when
> merged into mainline?

Not unless Martin rebases his tree (in which case, this patch should
just be folded into the original one).

> > Link: https://github.com/ClangBuiltLinux/linux/issues/843
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Thanks for the patch.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the review :)

> > ---
> >  drivers/scsi/qla1280.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/scsi/qla1280.c b/drivers/scsi/qla1280.c
> > index 607cbddcdd14..3337cd341d21 100644
> > --- a/drivers/scsi/qla1280.c
> > +++ b/drivers/scsi/qla1280.c
> > @@ -1699,7 +1699,7 @@ qla1280_load_firmware_pio(struct scsi_qla_host *ha)
> >         return err;
> >  }
> >
> > -#if QLA_64BIT_PTR
> > +#ifdef QLA_64BIT_PTR
> 
> Thomas should test this, as it implies the previous patch was NEVER
> using the "true case" values, making it in effect a
> no-functional-change (NFC).

QLA_64BIT_PTR is defined to 1 when CONFIG_ARCH_DMA_ADDR_T_64BIT is set
so the true should have always worked, unless I am misunderstanding what
you are saying. The false case should have also worked because it is
still evaluated to 0 but it throws the warning to make sure that was
intended (again, as I understand it).

> >  #define LOAD_CMD       MBC_LOAD_RAM_A64_ROM
> >  #define DUMP_CMD       MBC_DUMP_RAM_A64_ROM
> >  #define CMD_ARGS       (BIT_7 | BIT_6 | BIT_4 | BIT_3 | BIT_2 | BIT_1 | BIT_0)
> > --
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200121185834.GA3941%40ubuntu-x2-xlarge-x86.
