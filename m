Return-Path: <clang-built-linux+bncBDRZHGH43YJRB4NPVOEAMGQEKR7LGDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B08623E073E
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 20:09:54 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id t101-20020a25aaee0000b0290578c0c455b2sf3647790ybi.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 11:09:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628100593; cv=pass;
        d=google.com; s=arc-20160816;
        b=VDmxpM+Do4WGysJjD49wAwqhEXFM6gIO/smwuQ+qL9kkqrZ9fz3iOpdlDEToCoAv3e
         evxKXOzSUEf6I7mhJasuG1Ac4RwLQYmXk98trFjEYNPGybSankP70taxErHf9UCmF1kI
         kkq6/oNy0/3UNx4SuIndwT0Nm0Ab/gulJA1VNuHrsF9blW6A0ISNISMMphWupdkOO5bI
         uWg6Bt9ivAR4ngJqrAcgMebLpwKZMXF32leZ6XMLXT06q0KM2Hutvvl1OV/k+0ACFiVl
         3caGBShxRSJvlac0OuPSnto4ku32woYZze11rMn2ugAcUIOQmTU6R3jwojzu2cS6cifO
         ouKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Rrhi+Z+LPtK2pqoNHGMmntxPG8tFDRHbVPUbxvxy1I0=;
        b=bhIAhh6azu4nVHodf37cu1rs3G5z0AXQWL0H/BiXgKf22LaGHRnEQN7IGk4lYbGE3Q
         IHqguuoI9wbeTXTIl/nkt20Z0/Nqshq0j9Q8pyaOJltdYh8i3oJZRpOHv2uk1F+xW3V/
         p3lk0I33gtbW6ZbpKtUfgL6V5ixPhq4Lje9SFLTAApcV1n4ZM4iSkSINnhquidtgR9uP
         Tw2pMadSYXbwzndrlaANqpfXk+d+lzitlt6RxZbxR8s4rULGHsYbEf9c/DnUlta+5/JW
         XHEoUqlKapLcAJvro43RQcfjFHPCLeXKROBuo0XowkpSW8Q+S3EMqF3A7RVibO3M8yIP
         mm5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZdpCifRs;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rrhi+Z+LPtK2pqoNHGMmntxPG8tFDRHbVPUbxvxy1I0=;
        b=gCEGevpdRZcLa2jQN++lUKPz5KTXhh8v+/JKH/E8BwsKaTncJJaqWKPLroB2c2jzFM
         abufrnk2LlpzoLmD1o6tP1P5ARtnwolCjeJScaxS+EsqaXNmsTn1Begm1rY/gArSOnhM
         1lILMoStCYF4N/vbeQX9Pf+7uJ/Z3wE/SEzylBVnuAO/z72eWrAv0t1BeqH5bxnMEKkR
         9L5FfmwIwx2dMZk/3w+YlciuHO1+Yt/E+GPz/AYWim1WR5Dwmi/WspMtyxIggKcD33xl
         nPO32oe3ZMcePGpdbFomQ/rfmrxP+ufISJdu+ZKPP9Be8CQeXPIwEE7uA02V9LocM/B2
         ea/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rrhi+Z+LPtK2pqoNHGMmntxPG8tFDRHbVPUbxvxy1I0=;
        b=kprhVMe4LDpp4x0BH8vvRO0VBRYbTDiNAweiUmTk2c/kX6+4PbtV8kHN5mo74BfkGr
         fys5ZCpPM63xt+lihJiW8uDlbkwbSBDKrVwnhk3dAiwBwmslqjWwAPpdvrA4L0TtYwCt
         VySiQ20CNpgbnei9+CYbH1p7Uael3JCXOl8u181AehBXqG+BF68H+qy2tfV9iSCofEsW
         k+hYhPAPOA21YYiL1uRApfUX0YxRHA9iH7sxcD0WEkHFEuuUh7c4qy/FvKnBsk7LVs2r
         Q6KIMovMW2b1jmK7hIZZFNbL8Jr1HMtQxmlQ5tJjSHyNGtl9t3LtT3ChpdIcgY+wihA+
         tssw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rrhi+Z+LPtK2pqoNHGMmntxPG8tFDRHbVPUbxvxy1I0=;
        b=pugQstWW+VUSu6hxQFrOCf8H51R4RHfwLp+DLl0hXL7qzP3sNaxHTrUyvppum+c0et
         FSdpVww+5SbNnVHA0Il8gFozDuIRuCafTIjuANLW2LfjSvefL/crjYD1TonAfJDiLgzs
         E0fwrQIW/haCqM1GuM4m4aenJzHRjXXialNiyqVZqY/pcykljuYZsIXJ00LdQIvZlnyi
         iHWrVotqxQXBpGnXSagTzg+wYRvKIcMrcswQaGq5vav8J8oPiwiwD4GJxiazpAACLqR8
         VkfL6CxBSWiMVAtRsEzASaUpMo4F6TXuklcF6w8gTL/kLuavNIoel5iQSXKYU/ovpG17
         qQew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530g7nRzCfLTWqCIp2LPoRVsy8aQCSIY73X6snqJ669ltrbedUH4
	I/yft5DBHcLUGFr3XmrmEj4=
X-Google-Smtp-Source: ABdhPJyGw62d9uNHndHwPTncfdeO66kbLsMuKmHHx40ZkcXnhUvgxS2U6y256h/F3u8v/XBDu0S+eQ==
X-Received: by 2002:a25:2985:: with SMTP id p127mr743198ybp.386.1628100593623;
        Wed, 04 Aug 2021 11:09:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls1416775ybo.10.gmail; Wed, 04 Aug
 2021 11:09:53 -0700 (PDT)
X-Received: by 2002:a25:4dc1:: with SMTP id a184mr751914ybb.488.1628100593045;
        Wed, 04 Aug 2021 11:09:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628100593; cv=none;
        d=google.com; s=arc-20160816;
        b=VDJ1GF6X+8Tw+CHLL9CjRtc+C4Po6QV4VWGmBB0CqV8dEm6Uhm95vuwwR0X9bObcSz
         jvELE6KG52k2dSv2d00QPr+zDqLG4dQqZAYAqHEYLLp10P+mhL25PCbQbo1gcs8zcHFt
         ia+FJbErYgtbelKxOiLxJ1eEf9kVv8vhF1Vtfq7Oq5VCWgBeWF2okkdhKCBVyFYQeTxm
         T9kwksLank7L77gSZr0fq2t6Pirfd9IIeNx3M8EMNqcl2/QuiPleTXdwDv5q7debqqku
         GlkLrLJxlF+3sl5Ihsygs4hRkOXHOfjxXJWPx60R36ta59GNQ5Lp98MpT2IxI/hcmOFy
         bPvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ral1ZU11g69msFJZlb1AivOjbzPYxaeW+eku+0mRJ1Q=;
        b=k2hK86lo8FUgDvzPuHZ/yCherujSmFNW3Jeb4Ug7Ew/MGRc3To+/spUBpVK2u6vq+5
         L34lPXiXXOYGCvKtacYekwaSxkWwUdz4TSsDj71Q+a2CtckUsVDDMOsjp/7t8JwGr+39
         i04jvatILUA0eBywqnTGHl2Vq0lDbxyV4vI16MrrRxdRXdHGA40R4on53W7HhX4kW6pf
         nxr7dRNQ+0RN5NuRlnRCDiGdseIzE2wBv+xv/wE5NujOi7uQyAfgJFKTUT7GNrZ1whLB
         5vwUxsLYelu6CTkvqB4FO3SnRkd5h3uPU4nStbmi+Jb6oFKhznBRfh851W7V859zvU7f
         KAWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZdpCifRs;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com. [2607:f8b0:4864:20::134])
        by gmr-mx.google.com with ESMTPS id w74si224197ybe.3.2021.08.04.11.09.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 11:09:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) client-ip=2607:f8b0:4864:20::134;
Received: by mail-il1-x134.google.com with SMTP id k3so2492501ilu.2
        for <clang-built-linux@googlegroups.com>; Wed, 04 Aug 2021 11:09:53 -0700 (PDT)
X-Received: by 2002:a92:b74d:: with SMTP id c13mr695593ilm.176.1628100592598;
 Wed, 04 Aug 2021 11:09:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210720181542.2896262-1-ndesaulniers@google.com> <CAKwvOdkdoAadmOt1w2cE4Q5rOM48qPt3_WgkSkhxGVsyVV6U0w@mail.gmail.com>
In-Reply-To: <CAKwvOdkdoAadmOt1w2cE4Q5rOM48qPt3_WgkSkhxGVsyVV6U0w@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 4 Aug 2021 20:09:41 +0200
Message-ID: <CANiq72nxUxYLOu=O785rgpn-1bRw=sBC4hH1Mg9+Ofq1xfiyYg@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: add Nick as Reviewer for compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZdpCifRs;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Aug 4, 2021 at 8:00 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Bumping for review EOM

Applied!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nxUxYLOu%3DO785rgpn-1bRw%3DsBC4hH1Mg9%2BOfq1xfiyYg%40mail.gmail.com.
