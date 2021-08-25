Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBZUTS6EQMGQEI2OHWBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BC63F6E85
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 06:41:16 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id w9-20020a4aca09000000b0028b7adc5bd2sf13166007ooq.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 21:41:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629866470; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZZspY9okZuZZLS8v2nXht2FjetYU4xU3jxHgVZifa82JzoA2Fx1CK1sdzE3Jd2/Q3b
         dah1qAgL208rjUnf7OWfu0BHVJ3UHI3M8A65kPp6PIFEpZ4Ytp62rYieX89uZnX9uPw2
         Wr6GebfCQwmN4WRN90GESI4QTjf4RtCc5r+JtPYyJd7Xff0XJW/Dd70Vbw9D924t1JV2
         aBlTrI+aufGMCGmFLXy2NZeS4QZd6EUABz2pNSgxxh3S7vT/hn8az4UQXIA4E37qpZ5I
         ieNTV3wsj+8sPsipFv9YaenfcaCQZYvfYkVjJMK7pMGzYQ02ia2vcotk+StbYlZ5VH1i
         iVQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=FCT9KZHx9FhixEAWsFX4kOp7w54yJbN+SzMWkJstBK4=;
        b=T6UOuypsTByKQ94u3Ak+P5rrP2/bndHSYKGDxdHgtl3IzqtxXEASsqP0iPVElSZQws
         823lKfM16RhfMxxq6QhAEC6/KVMGhdf2AX9y7MoDei06o15e+/6FtsxipoTEgOXorOat
         B47zEcRw7V71kDXBuU01z3CCuVkxdC2UDqlKjjCAl2LtM0ScGEhE2rEnWXthgShu85b3
         Slg4WspgUZWL9Qu1H9fqpFoOZjV1KRhsN2VD3pAGzmfQximGe4AOZv1YnzXHovj+wTKY
         jGsOQOF96bNIqJCURqY187LIaC+6xHG5fmvmPJnOhaItHs7xvsj7S+chggnKGZz4oZ0q
         u/4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=nkyaa1Ps;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FCT9KZHx9FhixEAWsFX4kOp7w54yJbN+SzMWkJstBK4=;
        b=Ph3spWk9WBgH4/NTRLAXudHmIAzj8RH9eHzYy2CF4MHgrPDXjV+7HilcGH4/wOJBEH
         g7sLXY6iEqsZD9LY7ptizDsVsw9g6K0E0fcdH+7VL6icEtye+BBwsAreW1W6Yj0B+jQ3
         m7jLX1DcGMolCvhfurtHxroVbjyksAYHDghFpO03W8LDFBgHrGCOzBZ8a1JxBujT9BIt
         +4JT6M3RfgBLBT5mFV1S0oyV0S3XR9piWbTveVMci4+p6YZw8A6jjQNFzgPcipHsa/2b
         zoZDuOpW6LIKqkUfiz7AvzADK6Tv2sKi/Su6+FjNeJByKD38yjhjwRCG4z3BQSnEETxN
         FdtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FCT9KZHx9FhixEAWsFX4kOp7w54yJbN+SzMWkJstBK4=;
        b=Hy9/4n0/sB1yHPl6Z9gu6x8WPvOmqoCHKORHHaIUT2IKuRMqprcM7hDUC0k6KrBWY4
         pq1nheeftw1WESEbb1BFgG8j8sME0TGOvI2IKzm7PTeeA5h9aGVUy78arPdPkIk5JvIH
         Y0D+u+gLHfkKJtk2s5hASXhv8gYJBug8aT1YZQEnXMPPSCAAXowBvVtaCrzefYQmwUie
         O1xyPkebYPRIgva01lkpNb53rRZD2d22nsccDVYBgquMnSC6duzerG748GXSm1JQKIjX
         mLThi6SUhay5BGHXGhvwTyeqU+jgE4CoNdedh8G7InPZUecXYNJyoO6vqTFg7DXSBLJv
         78Dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TAMApgvH1+/8GR9hIiQCxZd5GrjT21OId34y1xVz18BnTBDef
	x2C/dpyXwMUAIGBp9sn+J4Y=
X-Google-Smtp-Source: ABdhPJwxHpC+tOTpsacKUPwjpCU7THbvtP72Ra63+A8kpUjjUCxZa+4kfaNykfwi1IBC/CrNwIc3Wg==
X-Received: by 2002:aca:ba89:: with SMTP id k131mr5413748oif.176.1629866470488;
        Tue, 24 Aug 2021 21:41:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3c86:: with SMTP id j128ls244726oia.7.gmail; Tue, 24 Aug
 2021 21:41:10 -0700 (PDT)
X-Received: by 2002:aca:6008:: with SMTP id u8mr5425096oib.127.1629866470033;
        Tue, 24 Aug 2021 21:41:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629866470; cv=none;
        d=google.com; s=arc-20160816;
        b=vYp6VfHkrTqrFdDwROe+x4RIFJRrymqF1836Wx4fjxxXuRQ/xV1ygkuTCfJ+DhBgjX
         XakHLxEeghloIqRIMgfqwDFFcQTNBg1U9umpK1mjFJbuDpaL1/bE/8KgLyINPCG2UXDK
         eRSRX4M7BmhB0/7UlQX3ciTWRdQ+qfv/qardO3FF73m1M9YVEsv+3iTLyLwh02HvjEF7
         BS9Ig8MYnNrLE315HLtP2IHqLr/S4Ac8GTql7vxAJ4tnvxl8me5T8ywfFPWO8EAEo4sU
         I7Zt6lHusmPkn/IxKVsD3qVnR+zRjV+BwRVC7voeI+tsLu/jwRZ6CPDH8xl5z7SggOAf
         +EPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=jTUgTyTe1JsO/HkydT4mE1i9swzMOoHdDKiRAUbXRg0=;
        b=a6DllEGavcCUpFXRxbYspcqm/0YIMfNkPCTar0iGjvzuDdHuwIZq7AW35ayc9PDo/d
         O1a0Yy7TlzLBoYXNs51p3aWVX/+e6immhx1zlo5xqBao24BbhIiHl8I0sn6778L1zXmm
         rslGHhGMyQZuQq8aUHfHWkE1js9aeflCfiw5U1SJVR2Mdl3qZtIkTCgkhIRht8Cb8d3s
         mCV+F9N0cMvSEgWRY239APlBZVmYdMHu7ylWpMTDEHpfXoid0eXlXz3RbIp0U6bY+4sP
         KoSeNenEZxtbHFs9HscOzAfhhnWyCbxd9k2pdeELuIy/Bexujq+Ga7ApRs1sNkyDiccL
         Mlmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=nkyaa1Ps;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id bg35si263198oib.3.2021.08.24.21.41.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 21:41:10 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 17P4eVEj021535
	for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 13:40:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 17P4eVEj021535
X-Nifty-SrcIP: [209.85.214.182]
Received: by mail-pl1-f182.google.com with SMTP id w6so13571463plg.9
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 21:40:31 -0700 (PDT)
X-Received: by 2002:a17:902:f552:b029:12d:3d11:4ff1 with SMTP id
 h18-20020a170902f552b029012d3d114ff1mr36048820plf.1.1629866430964; Tue, 24
 Aug 2021 21:40:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-6-ndesaulniers@google.com> <CANiq72n7=B=j94Oge7OiV9tpjspbBJr_0kEQCeB89cK4-zDQ3Q@mail.gmail.com>
In-Reply-To: <CANiq72n7=B=j94Oge7OiV9tpjspbBJr_0kEQCeB89cK4-zDQ3Q@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 25 Aug 2021 13:39:54 +0900
X-Gmail-Original-Message-ID: <CAK7LNATGwa-Vkk7gN11Z9n92w3fDdAxpJFKiUfJscqw=eySMWw@mail.gmail.com>
Message-ID: <CAK7LNATGwa-Vkk7gN11Z9n92w3fDdAxpJFKiUfJscqw=eySMWw@mail.gmail.com>
Subject: Re: [PATCH 5/7] x86: remove cc-option-yn test for -mtune=
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=nkyaa1Ps;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Aug 20, 2021 at 7:20 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Tue, Aug 17, 2021 at 2:21 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > As noted in the comment, -mtune= has been supported since GCC 3.4. The
> > minimum required version of GCC to build the kernel (as specified in
> > Documentation/process/changes.rst) is GCC 4.9.
>
> Yes, please!
>
> Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
>
> Cheers,
> Miguel


Applied to linux-kbuild.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATGwa-Vkk7gN11Z9n92w3fDdAxpJFKiUfJscqw%3DeySMWw%40mail.gmail.com.
