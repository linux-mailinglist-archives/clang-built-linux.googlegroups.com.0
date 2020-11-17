Return-Path: <clang-built-linux+bncBAABBGOB2H6QKGQEZ4EN2QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0ED2B7296
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 00:45:31 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id m13sf102417pjh.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 15:45:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605656730; cv=pass;
        d=google.com; s=arc-20160816;
        b=C//D9WJxn9QaYc2eLbkA86raRpB0I98ibTIcO2OZBV8e8GQMz/g+157JwomGQsPjZ0
         GyBTNy8ffKx/Wp57Wpz8FenrlM350ws5X9mMv+hXzqcSAXpdpXYqJ0s8mRk6djWHx8Cv
         qAXQktxvUVSRzjLHEcNdgZ0H5rT4DyRmtfCCCzh1bS4LcjhpET7LL6jOaO4TlMgoWqg4
         y4xYlxadnCo79jeQxIBakQmhHIEfTvpVQjJuGN+e6K6BrOcAwtpGJCG0IwkR1uOhQ/gU
         uPJ2eglT1p+BjUqpF94bxckfKoMPNZk5hUNNlHP5gWxmhhnXKFgJ/cAMYFmYn2+pdIxb
         XmRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Na1GMsBEybdIBPRoKh6TNRflv17HvLQgQ0WK81Cmw44=;
        b=q+gQCApaYBiLLVcA+PlChXrUOkqpnS9edHBHDGPMBDJCdB1cJHLFa0kI7YqhsAC26S
         vyx8FY1ww3uf/N+L4GiVU3MwVyfqZWE49LB0pXsGG6ia60kWk+gfbqsdasMZQeJCfUnF
         Gaz9KSZhlUnkQhs7prh0GR1+C/1+tyD8PFwQYbs72xqjDDcTSDAdxq3aVbZOxXVNMWZC
         iYIcYP2E8ES7ddwIWppLwsoKGmHKZrxv/crIR1ZtZnc/2Hou9ZnQpcJfOOAcjrtnTu/S
         MJfP/XKPzepaFmhYiYlNZHT8OZ3sEFD9s9/OkKafsVYLFuzNAjLvgEo076KiEwEL/slL
         WcTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kIsqOYTZ;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Na1GMsBEybdIBPRoKh6TNRflv17HvLQgQ0WK81Cmw44=;
        b=DEZXrMM2e/3xLMxZXoEVoAQ/uv0fmY7jTuDvfwuvW1F7s10tEgW3+elFqh6xwevffn
         f6ieRP06jYdU8Hs13sMAtjUKa/O3zqTtpo3GYJpPxWP5AuY1++eQlGuyy09SUuQXSAzp
         9LkfpbDchk12JQGL91GApWuA0mLm3D7lkKU0G7B1Jt53+1ZM+kk1UBtHjEYanuF/Mduw
         qm/J7pzKdUb7C6Jyf/LmwWiR7lkt61TD3gjq0GrlGuXfpFfdku6ImlszQM9LC6sLSbmk
         vAxTMeAKOC43L7ADf7i6sO4kVKOZboAhdxuNKA+W8XiPwBUO1UpXUVV1wpH2cyHYWYkU
         sr4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Na1GMsBEybdIBPRoKh6TNRflv17HvLQgQ0WK81Cmw44=;
        b=XlVxHayKZ51q4z0N4yvFMZytrEdDSHFvnbfyCPHFL2XPMHVqwM0jwF7ET7OkBCcBw5
         nSWmEF/HV6C4ddtvfY5zKPZuyY8xn6R44LreMQVqX79H3EfMRm8gk7IOnPRqXzxHi/ot
         CSP9saKOeKDoKYiiWFkAfwRYf2tf8xj4mCzU82D5QCwveXNLzj4pEPn6l+1dRjJDfSQD
         3FlBwH+94ZFbVKU9vS8+BoWzwWmJUVRDx6Eu7Ei9avpARv2stF3R9o8yzUUndAepEY7G
         ONLUABnDeFP/em/0PCCUNZAeL0BkUO0Rg7iMKE+W9CMsUi6mBrn03pcyZiptV3OOFI7Q
         E8aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fPxL3++fm031HMgLM2naQu2fLpSCKOzR0vn7oHfyrKj5UB2Yf
	q2TRFsTWGPjQugmrDEQIkw4=
X-Google-Smtp-Source: ABdhPJzEcAcmHHHi3krqLWsvjkQAdHARja6erCbgJHQAQQ1HwWu80qR9IChmzmPvbofNI6535sjFrQ==
X-Received: by 2002:a17:902:6b04:b029:d8:d392:7791 with SMTP id o4-20020a1709026b04b02900d8d3927791mr1960088plk.47.1605656729938;
        Tue, 17 Nov 2020 15:45:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b187:: with SMTP id s7ls6603416plr.3.gmail; Tue, 17
 Nov 2020 15:45:29 -0800 (PST)
X-Received: by 2002:a17:902:54e:b029:d8:e604:bcdc with SMTP id 72-20020a170902054eb02900d8e604bcdcmr1567213plf.54.1605656729476;
        Tue, 17 Nov 2020 15:45:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605656729; cv=none;
        d=google.com; s=arc-20160816;
        b=ikQLg3imkT4zYf+5S5kuFzfOquhQptQztSiPg8H3j7Zd1X0YHnZGs6IXxx31zEvuLJ
         3w+srkfpJv7OWymp69xLt1aHGjDVn6TStpBQuBm9SmnkWPAXwjFP/skQTelzSNzkXg+P
         DmOFxnwJI0s7FtRKTje1OwTZrWjKVDL3JKm6bytnsH1rZGXEZzeubLdhaaG4t1rpU3tl
         Sk1vEZ3dpXMw10KF8M/1aiMgcFeK7oDhHHvblw775VTXXU3Zxb+uitHkQJy3amNK35J4
         8zWTJdselefw0T8NIZd5Re3bcfsdTH33rdQ8Lq4Ynn9Ovw6ufpLq9iopaas+xvKKqQCc
         zEwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qg68/WShO7kCv9mF8FnOOIpjqmD+4tKLuv35AhXC4lY=;
        b=UuGGk+IYk+JKZCEEX8ajOLeawqJEphbN1pqC3BPeF/1c0N6EIPDLct7KStkFxiPRwg
         JudoahA2NNs5sqUXJFm5vS7dmKcj3sGObGwqNqMlb17t4+TziUsWvWvErNiPDahL8L2q
         7XjOtKBvKJs/EhixG2O5rc1v4BsYL41wkj5ngbF+TU8LC79Wg0ig2Gc1Rfuqdp4Jul/H
         S2zbBrLIgas0lZRLNdnc3eoekCfidCsW/vZhHDfNYujhXLikooZU8Mlvp5Bi6MUuDacE
         oQ25fGzPifBOOL5aeonWNEUc2q7XXulckyzaCl1geM30frn2BcDq03fMDchBlAfkC8SR
         jAGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kIsqOYTZ;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s9si1379505pfm.1.2020.11.17.15.45.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Nov 2020 15:45:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0381B2463D;
	Tue, 17 Nov 2020 23:45:27 +0000 (UTC)
Date: Tue, 17 Nov 2020 17:45:26 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH 2/3] Revert "lib: Revert use of fallthrough
 pseudo-keyword in lib/"
Message-ID: <20201117234526.GA7807@embeddedor>
References: <20201116043532.4032932-1-ndesaulniers@google.com>
 <20201116043532.4032932-3-ndesaulniers@google.com>
 <20201117030214.GB1340689@ubuntu-m3-large-x86>
 <CAKwvOdk_sphJGQarEWJLzGZWkdzO9dqmcRmys3Retw3vn2Fwag@mail.gmail.com>
 <20201117221629.GA4679@embeddedor>
 <CAKwvOdmNW3iynqi_+2c1P-6Prq1a8iVufoaZh2NAbsaBLeZZ4Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmNW3iynqi_+2c1P-6Prq1a8iVufoaZh2NAbsaBLeZZ4Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kIsqOYTZ;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Nov 17, 2020 at 02:28:43PM -0800, Nick Desaulniers wrote:
> On Tue, Nov 17, 2020 at 2:16 PM Gustavo A. R. Silva
> <gustavoars@kernel.org> wrote:
> >
> > I'm happy to take this series in my tree.  I'm planing to send a
> > pull-request for -rc5 with more related changes. So, I can include
> > this in the same PR.
> >
> > In the meantime I'll add this to my testing tree, so it can be
> > build-tested by the 0-day folks. :)
> 
> SGTM, and thank you.  I'm sure you saw the existing warning about
> indentation.  Do we want to modify the revert patch, or put another
> patch on top?

In this case, it'd be much better to modify the revert patch. I also
saw someone made a comment to the first patch of the series. If you
can address both issues and send v2 it'd be great.  Anyways, as those
are trivial changes, I already added the series to my testing tree for
0-day build-testing.

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117234526.GA7807%40embeddedor.
