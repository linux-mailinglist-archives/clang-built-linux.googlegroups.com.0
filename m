Return-Path: <clang-built-linux+bncBCR5PSMFZYORBWH2X33AKGQEGUECFCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id D62461E6251
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 15:32:10 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id 67sf22381258pfe.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 06:32:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590672729; cv=pass;
        d=google.com; s=arc-20160816;
        b=zi5DTAZof8KNpttnsQ6rahS/CALNNg+E+D/aQ1BgPWZOTGJWu6S1o/FIFO7rH5LpH6
         5fxvOm7VR+XeU1T7z1w4BEEPnj5cSaZ/zkN5yZdovhIaRM3p5Fq/w4Y3Dq0qZdMzYapH
         KutRgVJq0ETnWRgf0wsdXrVcGzhj0chR5dTewZBuJOZVYtWZuD05kyNqTovh8VR6rF7F
         WPscJssWJxxdR3SIcYECk3UEMkSW2KDX6rjWecvMv7KvOZ9VF5cdeSKOWJESwHuF7xvn
         +jY9JqCtnh/1AucFa+tAc4YThVlgBMgb2dzYB8wWJPc4up3eLM4oNvJjXEc4M4KAvEy7
         t1Eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=A7WD950YQVXRdZ0P2R81cL5Sruy6+/aUO6aAfOOF4X8=;
        b=NebuEmsgwQEdf5yH8vxAPpFbSkLF5kuN38vbeJBha2J/LoOZznsHqRjJoFLKvhqbzD
         g0I48UnnpSs0pUR06eQ+aZ3Vxd6805qUWMC0+pH64rtSmuZ32u48MGXMWDiOElTNmPTI
         hpt+QSuQ2JmFNnpoHMenPciTYPaZ6/kZEkrmvj1HiZwVgJOpV6dlMW+lVDH/JK/ztAhU
         gXsVP9ckeCHP71TEJUW8JO5BvjMR5xL1l4JVJB6rCUpj+UVJK9MScoZioK40EG36KozM
         RsP33mJ2o3AJwYdyvk5sGdsEU5hkOTOT89/PavGKKIXHbyyMMEsfEzbbrPdaFh1EjFYK
         flnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=S7lLmzfT;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A7WD950YQVXRdZ0P2R81cL5Sruy6+/aUO6aAfOOF4X8=;
        b=oZa+eaqTukpyTJXUPs5/Zd/Z1hh3WaLsrvxLnFB9YQlZMff/ScuIT2pYad07OYi84r
         e9dcuaWdKINHUnvKZBePVvly9ArDwhZHGJOS3TeOsKWX1MLLX3Y1Egf7zf33u8sHW3ru
         tj+u0DUbyO810Q6qq08GVknrIlqnoexHMnLioTPvKG/DgMrkYmbyZWThvP52eIiaQqOs
         TDHCYEJqXM0Q5RQbgBWOYfHXRbxEhR4yJ7IKd6zZR99VhBGxdA2ENcVFK9VD7cWN9u4f
         NPDBkXaexdSnLxmhCTDTIemOpr0zJCBuFruhcaC1E9aYTonPl+/bLMBTGSe7I9nKSN3X
         5tDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A7WD950YQVXRdZ0P2R81cL5Sruy6+/aUO6aAfOOF4X8=;
        b=sAYwWE7yfbbSg1jhKbb9rmOVzW9UTMQ5fGcjQv4AXQqud3OKUY7YC+72Gu9qlpLaqt
         OJKCWrWrlcDf/IN3Tcswr0loAipvmbdxh6cbJrTLusPG+uNzbZVhfP3YN/ZSOx3N+nuq
         1j1vkRX5rMx0V8xlPqbmZLk8I27SgBJl35KzU9FiUxUYRKGvyfOolRudFstV7dSpq8FU
         yLa+UV2ufBuoif2rhkj6nrcKuTdMse3wuS4O2q6RxFxe19SeBhiioQv4P+qerTgH4iXp
         M3CBgnUDUUDwQ/tzhxKXoTRRND8gGha2X52FQF5XG3VRAybDmpS/bLc5NSCEpUhZCGM0
         sNyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533M+4qjaRxgVCgF3kPLDqAlCRaqP4ztPQTxpqADm0YifOHQu/ta
	vZc28v/BiLaoU7UTAnX3g88=
X-Google-Smtp-Source: ABdhPJx6ljr8wS0WDEjNAG5otYCH0o5dAqsnYOy/bPx9jESUCzyXXYhQrOHSAbHp3VoAMa5tZnx/8g==
X-Received: by 2002:a17:90a:648c:: with SMTP id h12mr3920079pjj.229.1590672728923;
        Thu, 28 May 2020 06:32:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab89:: with SMTP id f9ls93580plr.3.gmail; Thu, 28
 May 2020 06:32:08 -0700 (PDT)
X-Received: by 2002:a17:902:9d94:: with SMTP id c20mr3559484plq.224.1590672728487;
        Thu, 28 May 2020 06:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590672728; cv=none;
        d=google.com; s=arc-20160816;
        b=goqWvWHbvx6GSAg8rqgE/Xxs5AWdncrE2xs5RS0HqOGcZ1ZdA12qPUwBdZBLhJO45q
         mcFPkKAXusJoJNFCelIeO3VlZBBwR5MK/oItoBYO+7Ncu13SvYrCp2DHdaZqtCmqsl0F
         C8eGx3gl60eBkiNJzX9NKYr9D8KDgGSm8q0V3bBnkBnAcsH4gC6RpCmb0Cl4QZ+Nson2
         yeuw3uLebT8sJpz4G/A2A7TX2RQCs21s9ybRY17F37LEN0I7UeAadiX6uRUutGWj1Yuy
         2gEROoMPLZnftiJT2L3aOxFe+dJlOnYTaZaBNQKVtJLUd/7moIVDXyRN9olIW9KBwTcA
         Smcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=C4bHhMZOigJbKRP/EDJCEGvcLfxdpubgpJoFH9AX/tM=;
        b=QgOv6rz8K+bdr66V0/EAbgMehAYpEp9iwNfVYKxEhE1jef5pjHiWadH3NViluerCEc
         sgtur9IuNJ1518RNKLMkAkcKZV0Da7SQzlWX7ML/Bu3Vtjw9lvqczNZ6b3KtBUO/Jg4l
         OblVNxGROmR/Apf5pO8XVNOOq8+GQZmbfyjO6oF+qm63136+vUOgmSY1hUCVL68kitr/
         8O07z5LXtlHtY9EtOnWHbvcMS18Lmx1U4fGiyf73/tAaEVfsNrCDJU3inLjsFIWtc7BU
         C+Hb8bl4r7xIshBlcwitLczrbVcO3T0/UVNQM9lHUdu0yxv1Jv91Il4ALAp/kg0Qk+9a
         NKyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=S7lLmzfT;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id l22si420054pgt.3.2020.05.28.06.32.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2020 06:32:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 49XpX46yFYz9sSJ;
	Thu, 28 May 2020 23:32:04 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>, kbuild test robot <lkp@intel.com>, Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] powerpc/wii: Fix declaration made after definition
In-Reply-To: <20200526205756.2952882-1-natechancellor@gmail.com>
References: <20200413190644.16757-1-natechancellor@gmail.com> <20200526205756.2952882-1-natechancellor@gmail.com>
Date: Thu, 28 May 2020 23:32:29 +1000
Message-ID: <871rn4jic2.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=S7lLmzfT;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <natechancellor@gmail.com> writes:
> A 0day randconfig uncovered an error with clang, trimmed for brevity:
>
> arch/powerpc/platforms/embedded6xx/wii.c:195:7: error: attribute
> declaration must precede definition [-Werror,-Wignored-attributes]
>         if (!machine_is(wii))
>              ^
>
> The macro machine_is declares mach_##name but define_machine actually
> defines mach_##name, hence the warning.
>
> To fix this, move define_machine after the machine_is usage.
>
> Fixes: 5a7ee3198dfa ("powerpc: wii: platform support")
> Reported-by: kbuild test robot <lkp@intel.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/989
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>
> v1 -> v2:
>
> * s/is_machine/machine_is/ (Nick)
>
> * Add Nick's reviewed-by tag.

I already picked up v1, and it's behind a merge so I don't want to
rebase it. I'll live with the typo. Thanks.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/871rn4jic2.fsf%40mpe.ellerman.id.au.
