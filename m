Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBTPMYL6AKGQEWNYF4ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 833512954CC
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 00:29:34 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id t3sf1512684lfk.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 15:29:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603319374; cv=pass;
        d=google.com; s=arc-20160816;
        b=WZcvQLy1aCAaMbHs25l/1k63lYXsRv2DoHwv6nM9y76woxKtVBSNqeL+znEdUZe7W2
         evp8t/o5cv32aR+1q5cQAIbvcPq761C+56qRQttwbC5GfLPXYLLU+I3g+kNbkBQB3nVK
         VQGCIHymn7rh+Cww+SAjV0OyyIdy0TcJVtLNI7wzTfXdxP5hIXJomhMNPbf0WrLuw32d
         ybk6mO/zMenC64z/TkE9lCdRZa2Z+nowKnjudeLWzkzyxwhw3P8IJybCJI/oqYw9vAHr
         fhVC82flsQLhegpU3bDLlF9TpdSD2aHpYRNPWGnXKG1h8UIqt2SdNqzlQxuq1d4ES29Y
         rdSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=QZvILwjnyiGBgF3jTc9wQtikG+jtnE7u/5LaV5sdtVE=;
        b=uUEJQP+6pxonbf8U1Cl+dRAlYbsPJZxdSkEfDnsSNhcSvkXABXfrzn4E1kUYvGcH4b
         b6/CwnWYAHgC1qAXvGpWBBfxb/C7PW8SU5opCuW64NDIZ5B+GzjiUfhsm5fgw3vlYIz+
         7G3H3ucf5gBgPBQjMuZIiAuxESwLMB+F2mWpazj6oP/KUtCVlFuLW6st6MpaaTNSQs8O
         rGYz7jmtNEDqJQaMflAnf3o2C7geFLi5TznT1vwWb9DuKIgVlRpQvH+nG2BlvlDqz4HG
         drRgOixn7ip6qIeY0dD57CGL2UvtAwuE76vKd7kWC0AX6VILRrBod6zAL/K0eyjT4coH
         8LGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=EFuen1JP;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QZvILwjnyiGBgF3jTc9wQtikG+jtnE7u/5LaV5sdtVE=;
        b=tS4gfz0eWH1yVLlCnkKzU0XbWvFKsMldLNdjt2RnHt8ZU7DfN7veOYZkhI/XgJ9rTd
         2w1+PCyXtHa4Ir03QV+MCdqw4roj0KVltYgrrtPi3K9X0jPYtLcvKRceUDu12lHeNqbU
         zPdVJzh+OV3TiPQFnBVwaiCU15RSbw3QW6HkFr+vfuMEMhGUuadZkcSwCHMT7qBdiW4L
         RR13f7XgolYSBJ0KL/UZVRV/OV/LGrCpXkrOU4sNP9d1iNYB36MDtDMDLGS4K7eKbGG6
         nFpziCfVXC7mmeJI3vK1TxT42iE/lVG3+a6eTdG0FqnSDg4Zjd7/pL3eUSfM80WDNus2
         Kb2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QZvILwjnyiGBgF3jTc9wQtikG+jtnE7u/5LaV5sdtVE=;
        b=p6iPBD1JscXCx0DTKiJZfLOZcbQd6ok5XCNBtvP3YOjsYRvFXCNBvXNXHh5Ttcfu4N
         TIAO81JGDncWPi1ieJ5aoLB2u1X2uZc4fSzoOrCwVbyScssYSchdCquAnYpDroFxZ20/
         pYkUv34Ms4ncsknoRWL4U4nGyWxSVoCs3PHM/0mqVKCG13JkHa+8Uhjgsg7d3AS4nVGx
         Wg9S784NRJg6j6loVqR3sATRdQJqLYk2lSZIGx7vsUcOonTLWsN+tgxVDUAzukKBYDxd
         cpXlMRzfJsOqhVCkzAExUOD0btebAu76oTcdmdLe3aDAsTdrxqL/a0VS3shxNktSjoO9
         3/Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kR8u+wsFkk4rE+yhgzkWTEe37NiZht9VYUqE64VhfOa42+A4s
	j71yZjoHm05lDVwnLMdgNk4=
X-Google-Smtp-Source: ABdhPJzLxL3p/g4iC42cwJZZkiSqkwptqcEqwap127Q9PeYrNxa+C7MEoaEFE/PrjmLSI8n0gWVpHw==
X-Received: by 2002:a2e:b619:: with SMTP id r25mr2374821ljn.465.1603319374097;
        Wed, 21 Oct 2020 15:29:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e61:: with SMTP id a1ls862942lfr.2.gmail; Wed, 21 Oct
 2020 15:29:33 -0700 (PDT)
X-Received: by 2002:ac2:5e64:: with SMTP id a4mr2106234lfr.109.1603319373018;
        Wed, 21 Oct 2020 15:29:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603319373; cv=none;
        d=google.com; s=arc-20160816;
        b=dya9Wy2mjE/64UkYg527Y5pVDrNf9e+ai9ZDfnaBpTzudvr3DB48Z2zZt0X+GN9Ris
         RNUW0zLg+ajfubmqbpyS/kxC4v16EqYTbXB24OEznX7ahLnxxztRR73hD9LDnBZge4BO
         Hq9QAjTfBk7DcLoDDAPxHZegpQvOSsVZCHPY6oOlMOGRh9EJ4Gnce3MdEEiFcHVmI5Vc
         mZ8oRfu8EhZ6SUDj77d3fhRTzFg37wW3dn4ZB3N79RbpQOaSB5sVePTZb98s40nDvTGg
         +rdWILFyrrhNHgKDehXacMy9tWbF+rd0KM4l2RSCjP1p3Mt86s6Jv7tOeeuvtiCFMZqb
         S8BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zQJz30b30fEvcR2ms1ObL7VDhJR2lPmGmg0uC+VZ6/s=;
        b=XB4p8lDbp+QGBgwdzNciUnBW6KS/5/WB8B0NBrcgFZoLemzVtsLAyRbQOI4/GBPXHZ
         4XZ2uDC9k7gB2G1xELt464cjQ/KBiQgmsle8iMvGmuwLuDfodywDl3VjUNJYzhYP9srd
         Roc7SeoiyKkT2QeeAtYbofWj6T6U8FG+x3C5NBAKhhXw/CQ0voKvixIF8aMciblyMRgh
         ojDFbRlbHIZYX86NmbSJ/f/FT2LaXYeQ4UOcq41YeDQiYp2IfSgthFSPhqQ0dYMkAkxQ
         Y97Ilustg2/b405CNTQp6vWmkUDaODxi/3E4dD1dg1ajGmXm8223kzWSdyuwqLhlKxEy
         0tDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=EFuen1JP;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id a1si122773lff.2.2020.10.21.15.29.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2020 15:29:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0c9a000363ca1046998683.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:9a00:363:ca10:4699:8683])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 276351EC01A8;
	Thu, 22 Oct 2020 00:29:32 +0200 (CEST)
Date: Thu, 22 Oct 2020 00:29:26 +0200
From: Borislav Petkov <bp@alien8.de>
To: Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@kernel.org>,
	x86@kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] vmlinux.lds.h: Keep .ctors.* with .ctors
Message-ID: <20201021222926.GE4050@zn.tnic>
References: <20201005025720.2599682-1-keescook@chromium.org>
 <202010211303.4F8386F2@keescook>
 <20201021222215.GC4050@zn.tnic>
 <202010211523.EC217C9@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202010211523.EC217C9@keescook>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=EFuen1JP;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Wed, Oct 21, 2020 at 03:25:06PM -0700, Kees Cook wrote:
> It was a fix for the series Ingo took, so I seemed sensible to keep it
> together. Though at this point, I don't care who takes it. :)

That series is upstream already, I presume. And then it probably doesn't
matter who takes it...

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201021222926.GE4050%40zn.tnic.
