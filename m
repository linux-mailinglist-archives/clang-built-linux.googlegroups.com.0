Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMUIZD5AKGQEUZZQP7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 337FE25D446
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 11:09:07 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id u3sf1396670iow.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Sep 2020 02:09:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599210546; cv=pass;
        d=google.com; s=arc-20160816;
        b=fPf/XxqNzxWgL3OqQHc4iOhI1OYIqgq3+uqnvanbpI7LubB5AuWcC60TNKXQGJRzdv
         W1qPJq0nWGwqm2aeYr6fIy4VslCHA64HXSgBteL663MPFxhEgSgn/ENQJXRIc1fQhTst
         EDUIE8OBtmrjfakF8WIjX4wXSao2BBpKNsBH28NARu96WK7T8VTwdwJQ0qUL7kj+T45W
         QDvldKE529NqeYpd0wgdb2duKqqihBEAhMe65F6jq+cYqzQKNy2ptCDi08LuHbQbTpux
         dYe4jXL0jlFk2cxrih/k8s6TmmjPIvlc107kT7Om632K6JaGCCKCMI3lV7U8U/5Y09os
         iarQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=mUnUeTDqBC+03pzqlFjznOjumjZu8r8K+MZ88eJzaEg=;
        b=V/v7noa4B9PsmylqDzLb2q9F1/XejY0DDza1mqKF1wVeip4ou73WK3qhIEUKgjnnAj
         thIeKb3MdErwmVAKJCAX93lUlKLrUB3D7Ay65uJwXkfL7Qbi+UQim2uHV6S7RmPWrSCG
         Ba0ZYGnJROdmA3wrrunKr3M9wtwOQNNRxNiD3SrY7A2ixRyT9zoZ97LvYzULoTQYLdLz
         ZX1c08KnI/ZlRxCP40mjAqPhqaxIpcre9gQCryWJdpPWn/fAEVrocknoG9fKifSUNFLI
         72C5YDbsFCbPyI4vjLI3F/KaPpdZjKpYRe6N2CvDbhvuyF1i+Ut6ie8OYbaKyhOPki+3
         6oPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uerSpXIe;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mUnUeTDqBC+03pzqlFjznOjumjZu8r8K+MZ88eJzaEg=;
        b=LpDnlYpHt3PZUcAgzBg7gxrrtLGMudceMh/A+ZjSdQccvmoIijqkWXc2b8xqaIUxTJ
         3OhnBF/r0Y9Nr4uUe32Ru95ZFSXJLZCSka+x3vMeZ3YD3p7mweU+E6gY6Wn2gEw2isb/
         LEd0TvycCNgtMobgYgRwidc+k/QU+Rz5bZUMwrhhX4xl5Vrw6tQ2s592Pchr4xXiOBNk
         NusL5uh7syetGdtnVuaHGryT13moEJqWtkecNtMlXozdhwHCNRvLjdOTnTN/Q8YWEMfR
         KZysr3ruz1SSWYIHhavXPJPqxfPFuaxTnwIN2YL/4LFEmxV9RHoLUCAsbPi+vCtVwfnV
         T5gg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mUnUeTDqBC+03pzqlFjznOjumjZu8r8K+MZ88eJzaEg=;
        b=CrCRkwGe2qg3WC0gFrALzpW4Jo1Z8cJfO6Pe5Ze6mrJUdKBZ1G9u0QoJHTx+TKOXpS
         s8gXnFf22VE/xJ0IhUzxtl95hCW+EHxz8dZprUIriMcrTPbud8jrNUdTDI8auIocK5a3
         Hl1FDbqOPJJWYkBLnC6vEvuqX+QSQL7yxdrsIBmo5VKcIwbcxpg1kVu02NKKzFyB6vI4
         u0tmlPj9mEamPbBbOUqOLQGDBnW+2FGqYlalaWK1TOFbXBQkTRg3AB9sZ0hEBd8avEz/
         vX1Oy18veZRmab4eUbKoF02/ZVMl5s9QsxYGLsv6xd5Aabim04LC9Ff2hOSQoOzfhwZV
         /6iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mUnUeTDqBC+03pzqlFjznOjumjZu8r8K+MZ88eJzaEg=;
        b=I3CZGa/jGOa6yaKgMUEcazBIK1XHUkM8Ns+/C2Wz/SY/8ijM3S7KhaysVJSPHUCg01
         IQNXJSd++SigeAYNAplffOR8Voq/V9SjPf5SVXRh2QiL5p2wsPBdAd8p0Ax/ts8X4j8e
         PYJGNDnlQP8ZudZBo97aFZVoITU0c3XFEjEp+dKCKbAWUqheCmOvs/jJH03ajwPzfiec
         V08Xcw/L/Eee4scx9zvKAExsE/4OI4Du2CWw0eNVk01/gyfJn6qls/dvsV4X8jqzQnFG
         tL7pbsIJQQyWpphGUVcDyl0uieoqrMVCk2PuikT+NKq8rgqOcI5PyC6fYWbNUl2SkqKc
         Fi0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Errhj7xNNEGIfsLuNGhGEq7tY9HLbI1V0WH8TRjmfeeOHjTbO
	QInNcuSMwab1hYOtnHczAbw=
X-Google-Smtp-Source: ABdhPJxuxi827+RVNW6E8BBeLoK2uDvFdKsIfK5vaoxk+BzmbDvR63lvjKl/A5I5HG+DDtXZCPw5hg==
X-Received: by 2002:a02:2a0f:: with SMTP id w15mr7463906jaw.132.1599210546243;
        Fri, 04 Sep 2020 02:09:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:220c:: with SMTP id l12ls1171778jas.6.gmail; Fri,
 04 Sep 2020 02:09:06 -0700 (PDT)
X-Received: by 2002:a05:6638:2689:: with SMTP id o9mr7519650jat.37.1599210545972;
        Fri, 04 Sep 2020 02:09:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599210545; cv=none;
        d=google.com; s=arc-20160816;
        b=IlP1o8fwY+/m744o6oCDmtr3hWigJEyrSevuY4hAsYkOCrGQbtmB9mJwtN3vny83vf
         6QSAiG1fgvS9FF3pBjgmcULjdxEV4G8XRtMjrbBIHXm8a4Ji2cT3BP+KiAkNg0+pL0vN
         mCGXZ/bI3lIsyJ4aSfGWduhl5VFVpfNVJ44FW3JGzBDXm/PvItciUEMJ/TzW9qgR31dW
         9KoxYtuU5PsTp4n1+bvdKPMWBNhKHzmIAnuNOpVSOHKHjX8hudYL2i+jpnemdklPjeoI
         SuAMoo4DWAl9vMgvlkkgK/8mo9gEKf+XnVxJhlcyMYJEJtFmVJAKzTIdi7J1q4jMVt6/
         4yEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=B1F8lj9Fqbo8dezZg1rybU9KGFv88k33ECwbjR1JZPg=;
        b=MBMNhWvDKvAxXIjof9XQ/uG2Se4VRCROjA1Lt9Bd5yvbElo5Aq6kHshRYl+lx7KQRC
         ne0MeSjhRLPW6ByROn5Bwv71LHObjmuuya2PvijvYUb8FmRh3s1Xx9fRV0CgYheJaVFc
         v2VGDZhaYvLHDpXQIgn7UKPO1RqHrNDPLH50AD5otbFl055JqqnCyD4xpeLfO+d1KFUg
         KwOMZ7UCbDqR2vTNxkuGDHZH0lPsxciBb6b9VSeyhiy1v3pUU8e/qc0EjwhG6IbR0tBq
         1tROH7uapTuwLO7fhL1EkPOzIsmMjDDDTWAxoym4u/B4lqdeQZEBlo77YDVPm4Q0AWYm
         ewkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uerSpXIe;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id a26si413585ill.4.2020.09.04.02.09.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 02:09:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id w16so5911873oia.2
        for <clang-built-linux@googlegroups.com>; Fri, 04 Sep 2020 02:09:05 -0700 (PDT)
X-Received: by 2002:aca:d409:: with SMTP id l9mr4407752oig.70.1599210545701;
 Fri, 04 Sep 2020 02:09:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com> <20200904085520.GN2674@hirez.programming.kicks-ass.net>
In-Reply-To: <20200904085520.GN2674@hirez.programming.kicks-ass.net>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 4 Sep 2020 11:08:54 +0200
Message-ID: <CA+icZUVzWZZ=CCKEWiwsaMXM2Xy1F1NLNRS_2D15NeNZUGqquA@mail.gmail.com>
Subject: Re: [PATCH v2 00/28] Add support for Clang LTO
To: peterz@infradead.org
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Will Deacon <will@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uerSpXIe;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244
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

On Fri, Sep 4, 2020 at 10:55 AM <peterz@infradead.org> wrote:
>
>
> Please don't nest series!
>
> Start a new thread for every posting.
>

You are right Peter, my apologies.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVzWZZ%3DCCKEWiwsaMXM2Xy1F1NLNRS_2D15NeNZUGqquA%40mail.gmail.com.
