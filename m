Return-Path: <clang-built-linux+bncBD7LZ45K3ECBB3P6W75AKGQEULQWUXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 263052589ED
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 09:59:42 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id c17sf241137wrt.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 00:59:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598947182; cv=pass;
        d=google.com; s=arc-20160816;
        b=xVnelhPKAGbGvJ3IR0xYQSPK2pwOJs088kq4Mp1GgHH3CQl5iFl/jDy6IwZJgU2n5d
         XZ2Kejkt9qz9PoO29WMhZp9/Q/OPyVQTYSP8k8jRBD5I4qqganplj3l/AI5Nm87GFH4a
         EVQq76GRQt4+YTsJx6ZtZM/NIbTT00dDg8KZCPf/L7WToeU14oRvz3W5nltk7jwXq3mc
         RgQ95DvI47lGgL+PnVU4A/WWFPN3N6mVzcRsfR086eRGa9T18Oatn7/L20Tl8m0mKm7h
         WC8bgdUZ9yaZwpekElAVhXe53hOHALOEo94cnNRoEIs1btPh9GDqk1iv4oiIUNarsV1O
         p7XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gc23My3G2DnMgdHSMhXGq4koEONCYSHEP2JMJmswCZ0=;
        b=gkvWzJtyMsFWJUnDKav8MTpgXtt8KzHLaP1BPxKC5iAtsD+M68GXtgIt/xHQm/b36X
         khH7gmvzEh9soW5dxiitxUhYc77salq/y9t1QjhBya9RWBAutT9i4Y6VC4a1IVt5trUJ
         1WWRzKUgXpqOow6RU/HICp0vMR8ckTTxifCrFE7YqrjAsHrttAT+RLNRLlBJzk633amV
         KzoKUY0zEH3KmQu+SKHj4rlSrQvQomt7gXeErZMAF5Lq2WKulrcC4ziPw7NoL7ePRrCj
         7ZcnbsLRBw/QWATY14NqSr+iyecDppjFIBQgaV5+DVELoWLXm/RVynWhEVd4G9WkifZV
         uyjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qkxZLlPR;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gc23My3G2DnMgdHSMhXGq4koEONCYSHEP2JMJmswCZ0=;
        b=AFKT57GWCHqHE3zsgxvcAMZLLlwYqs+UYzdCxL/n9b474faCJGV4yOavIcg0bzzh+Z
         /iKMj0O9N4y7xAjBedF+UH4sstw95gMSZVooVSoiE6qduMlnoxTnwMjqHom6J9MPc5yI
         4O3O5XYFYghuTIFB4K+z6GS7LQXnxZ5IUEZzgkYCVAe3DcvYX+RUyCUJqAavanhxi16G
         Yu6VM8KZbeASPyVwnTwSVp/isx+WfyGqQTzZjcCRuJd1wsLzoEH11cGOLpDMyG1wi2s4
         29sh1Sh4PI0hbFZi1BOIFh262fJ1Hn1NNe6CqaOEOWTWCUTD0EaWgHA6lJQphu0eqmZ7
         3jJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gc23My3G2DnMgdHSMhXGq4koEONCYSHEP2JMJmswCZ0=;
        b=YxrmcFKkaZ3LkylOxshJHGaf3rKMFJeadWH8OYZZHoCjpsHijtesv4CluX1QxFH1H5
         VKmX5yutCMi7YjSm2TGVlGwX/rdF46H6deVtb3WNQY+PvD7jGybtNQP6kd/xDmJ8syBA
         Q55eLRcva8SKkS0h2OqRXwYctcC1Wq13HQvHTSRItCRnyOYYEGF9NysHCUw4ScemFzKF
         X4lV1YOWCfkkGYw0tJj8rGiFuMVjCuRNz51kqC5G4WQfBaeS2n/7/0BCAGsgu+wnk5NQ
         oh+YRvdlsd39sYtBPRXhdSohEF5cWt/6SPBs/JJYPQuVu8l/JeQEzMEBCgIFXs7wFV27
         462A==
X-Gm-Message-State: AOAM530CMDvDwJ5fWfk52Mp93R7fqkpfW3co2Kw+MX050lxtDyCXZDdj
	TG34yLJErb9kBc6fIfD4/HU=
X-Google-Smtp-Source: ABdhPJwe9GDx006XRP7HdTDXC2oN4ZalzBU/HD2uJ5LvZu7ligZzqqX8NdkwPhf/tQeGQl0OxjyHxw==
X-Received: by 2002:a1c:2cd7:: with SMTP id s206mr525063wms.165.1598947181824;
        Tue, 01 Sep 2020 00:59:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:81d4:: with SMTP id c203ls266976wmd.1.gmail; Tue, 01 Sep
 2020 00:59:41 -0700 (PDT)
X-Received: by 2002:a1c:2086:: with SMTP id g128mr523134wmg.89.1598947181012;
        Tue, 01 Sep 2020 00:59:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598947181; cv=none;
        d=google.com; s=arc-20160816;
        b=OxNuCvptfLh0a8flG7fPB0LBZAZVizQj9QEcNchqL6mANl0r9lWCyKa70PHvDvV89b
         6ZNHHXwDCFgWuivXVyRZV/gMMpQRTXExiKjH/zZQCZlubDY3r9b/pkYVulQ9222Cd64f
         DlSutw/iqUjmcuPxrUXJ6IjsMJ2vL1K+qLXYX2wpPM68eLxxtELZZcz3P2HjFgtIW1zc
         19Y00jlDwnMfNRXdEdfCtApapL7W08nj9T9q/Jfb2TI36Tm7BXFgXtaqbJycLq7H7nz2
         JI1B8w8jvC+P+HM/oelZOfYNeqCLlVtCe5r2DSwEaWFr9ujNARy4BSQfU006B4KKSDQQ
         OZYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=1tUkMsxqX+EmvRrvz0z84bC2IgPMV2uqRkretCUGwiQ=;
        b=A1nk4bcg76ovzzdylJG8m6bgJ2acqBCjOz9/j7+2clc3VCnzpd0lFnLLrB3I0kfETb
         GpJetOXexIhohR3bw/mvpzNTz/wcPzWchSUR5+eaQgMK9W+fN2B6Udlhw8bulpfBGqlU
         5qZjRcjNMS0mcPSc0h/fLnAMqxqUj+FSEkiLt5j1wSV/LE61z2AW5AbGkIHY2HTrJco6
         6h3UDGpn+td7Un8WDCtEVzJoRO4kE3eT+unLXf/JkUPhW2YaTR3UWStmhqBGxx6BYSTH
         it3dSuyDYOyqrqb9C7SYj20blbDs7ZEM0zV3CcHFm0sW/daCFZIdHwe+9ZeiFHoc7WwL
         tJSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qkxZLlPR;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id q2si11474wrx.4.2020.09.01.00.59.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 00:59:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id l63so521063edl.9
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 00:59:40 -0700 (PDT)
X-Received: by 2002:a50:8881:: with SMTP id d1mr689496edd.306.1598947180775;
        Tue, 01 Sep 2020 00:59:40 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
        by smtp.gmail.com with ESMTPSA id qu11sm511021ejb.15.2020.09.01.00.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 00:59:40 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Tue, 1 Sep 2020 09:59:37 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@suse.de>, Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 00/29] Warn on orphan section placement
Message-ID: <20200901075937.GA3602433@gmail.com>
References: <20200821194310.3089815-1-keescook@chromium.org>
 <202008311240.9F94A39@keescook>
 <20200901071133.GA3577996@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200901071133.GA3577996@gmail.com>
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qkxZLlPR;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
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


* Ingo Molnar <mingo@kernel.org> wrote:

> 
> * Kees Cook <keescook@chromium.org> wrote:
> 
> > On Fri, Aug 21, 2020 at 12:42:41PM -0700, Kees Cook wrote:
> > > Hi Ingo,
> > > 
> > > Based on my testing, this is ready to go. I've reviewed the feedback on
> > > v5 and made a few small changes, noted below.
> > 
> > If no one objects, I'll pop this into my tree for -next. I'd prefer it
> > go via -tip though! :)
> > 
> > Thanks!
> 
> I'll pick it up today, it all looks very good now!

One thing I found in testing is that it doesn't handler older LD 
versions well enough:

  ld: unrecognized option '--orphan-handling=warn'

Could we just detect the availability of this flag, and emit a warning 
if it doesn't exist but otherwise not abort the build?

This is with:

  GNU ld version 2.25-17.fc23

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901075937.GA3602433%40gmail.com.
