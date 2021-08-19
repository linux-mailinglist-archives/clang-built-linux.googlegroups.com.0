Return-Path: <clang-built-linux+bncBDY3NC743AGBBE4S66EAMGQEOBS7WAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 420483F10DC
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 04:59:33 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id d1-20020a630e010000b029023afa459291sf2650332pgl.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 19:59:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629341972; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ct9hKQ6rDXIbDOju0flLbP+//UUa88iZNK7NLx7IJLBSfjvZEKk0RLEASYTuswRQ/G
         brATqEGem4XCXnXZwvTf0qKei6su1cTbolfI+3Ly9Tw+bfSxTLJtE4qKqSP+Nn2lcZal
         HTVBRKjwSHFvSUFeC/FmP18gqWxJkq+b8dlcAEdjHOq97J0QULAd2boi4ev34ZVQF1OW
         bwcbb91N0HIMhVCWiojA0RfEpCQaHrmL1FiH808wsbqQ+HpqmXpqyc/H82TemjCMusSw
         6RiDrF67THOKLrEG4hwUeKP2qy0C9ELVznRus4AolJ6PIrOL3h/mqFCHSbi9yty0WooS
         wMuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=/9nVc60+wjMhPXNZGIFw5MlG8akrKZ0zzoaeBe301V0=;
        b=yPgZmYeCs9ica7yNbk4XcFTYP8KXlWGaEpUN+oRjKOigXtueWj43HubiK6xK6bx4OO
         QTTOoRdSYt1dxPkcoWV87WCWXx9v2hPqu4qEcVK7Vmrj0y6wPi7y25S6UvOBXP0hMTX4
         pdBvZ+le1664nRa95uw/bGquix8oT2YuhJIHgR3+1Jw1oLe+mLtAABhHhp8cVLBI6npw
         F2GlZsg3G4gy1UeJrMICQIN/8/IQ3i48ztHhFVKbON4dcMe9NmaD2h8M1TZ4Vepxj1cu
         CH1XsDle9Soc1me1IsHU33G5Qr9kGDHqYpu8l5OKtQS/axmGInoBRrFbAtCvXMKEwcsG
         b37Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.127 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/9nVc60+wjMhPXNZGIFw5MlG8akrKZ0zzoaeBe301V0=;
        b=ppntw8cijYiHWOmpSrtEGGJUo+OZ55LduMBFfZzhopGddeX+j9pXknCjv9Ega4ZQ8e
         SZTkrevPv3FDDMLG5b0EhqK1I1jaZg2syx6orEynOSlmF9kQYBBIdz8jymbLWbCLJGl8
         78AtFzi7Pay391U+M2ibAanwCmVs8paK2c/jJb5RkoQAP39mW7hgoGElv28Re1J5fPda
         G825NWDMh+aDo1K2QOXbF77eGEAHoEHfp/eLirggZAmLVIOh/rYAd8hKuO7h3qbiRHDQ
         6SfDcfHooQcW95sXNbGNnD4yy3tCOSz9sOZLlqljRRIpZfYPb4W0kATbtm/uhXLzgp6j
         OoTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/9nVc60+wjMhPXNZGIFw5MlG8akrKZ0zzoaeBe301V0=;
        b=Ga2DqWk9P9JxJ705HA9kh6v0hAfbi4KbnEsJG0gwuoCjt7w3fAa8jyXJQo87wC+6U4
         NTqo/zOfN0ymQ55T5qX/KCh51wVHuRP5xrjS3zy0osZlKCa2OpatR4M1b5vgpKVWEP6i
         pVr7TPDa11KSky9GxHlEwNFts4SFQiOrpuujKvW3hn2WclahIyAeCkboEBuZZ8V2s1Ut
         fGmEsrL1kX3Qkit3uSyHZEXAqmYUMbE1WiMTD4K0O55IMzpc/0uAWHGh0UfgQu7bmFW5
         zX5U7Ub5h826yHEqpPLww418PRQQNL+yAbMCHnHLdstrqosPLYzED+/XfLyD7Jy6FeEo
         HVSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OZdANPEeUT0FIcMi/Z22PkSLyLYn5EpKcijHWXQod9Z4m6xG7
	UUI+uX/doc/WnoCn+/IJpBM=
X-Google-Smtp-Source: ABdhPJy/CUTxxSu6ukDpD2F2xN7npnQ9/wEm6HdFBAKskNHIbg5Tysdzp+eThM5UMoPVGREcCtC9vg==
X-Received: by 2002:a17:90a:db96:: with SMTP id h22mr12859021pjv.212.1629341971913;
        Wed, 18 Aug 2021 19:59:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6fc2:: with SMTP id e60ls2232111pjk.0.gmail; Wed, 18
 Aug 2021 19:59:31 -0700 (PDT)
X-Received: by 2002:a17:90a:d791:: with SMTP id z17mr12400202pju.203.1629341971327;
        Wed, 18 Aug 2021 19:59:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629341971; cv=none;
        d=google.com; s=arc-20160816;
        b=isduPnzJABUWrsKgVFb0+YPOmvVM2UgcDNYEXIerWSiABEqJkBhaS93ao3pAV8Tk3c
         p3ju9yQYHXPQmtWuBRSJynNPY88NHm7jV6fWIraFa+56rFezVmXPjfMiJcFNZiwGknEv
         7CiTM/wMJdXtg/1nWnTAfcfyawZJXsIEgiGeqDGKw3BLdb8FD7DS4Mye1agIqNgxTWOF
         nvx+spATuGz5IzFt7tPEPVkyQCO1xQ3QUIKJTEr+sTpH+suH6UfIw+miqmKZVml+iVeC
         oMPwEaupViD31Jd+gY3QeSI51+zR3YztT1wyOpzkvtZ1Dih74cuSuLUZ8Zid+CwvFA4M
         c/yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=vKpsb2GLFFEUSaFNfQBT3Q3QefKs1u6egmF93353Poo=;
        b=n+A+C/5WrXnf0ULYfLDn2grsLc3QyvBZoaszETuCe70se/7K+n10aeMa+vDB47pXgO
         cfslRDHFyqQs0Jl7XQjHpyAEP/rrUqdDaeXWKHzpKAnqVHt6uGCIZ+tlDdRXla7h6M35
         Zvxigxz5aU4juS/3f74lrvAFib80X0sl9xSsc2IQArlzrWybyn4QXfOafbg5k6grJxBj
         QPsO05ZSbWFL2ByoIWRQXu9O5Rr0Rr3cbxJ+SWs3DWA8jiIAou8Kp63LwFCyhrYRgPL4
         K3T8AvGRfE9+NikgTLbnKIYnG4gTBExvD3bPnDrSINjDGONUwvOGlqG+/ZS4kfSzAA1a
         bJlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.127 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0127.hostedemail.com. [216.40.44.127])
        by gmr-mx.google.com with ESMTPS id p3si137322pfo.3.2021.08.18.19.59.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 19:59:31 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.127 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.127;
Received: from omf13.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 27D8C1807B5ED;
	Thu, 19 Aug 2021 02:59:30 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf13.hostedemail.com (Postfix) with ESMTPA id 02F8C1124F4;
	Thu, 19 Aug 2021 02:59:24 +0000 (UTC)
Message-ID: <37db2c792732ac4b39ee338f0a7fa9f260aa3938.camel@perches.com>
Subject: Re: [PATCH 2/5] slab: Add __alloc_size attributes for better bounds
 checking
From: Joe Perches <joe@perches.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>, linux-doc <linux-doc@vger.kernel.org>,
  Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org, Daniel
 Micay <danielmicay@gmail.com>,  Christoph Lameter <cl@linux.com>, Pekka
 Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo
 Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>,  linux-mm@kvack.org, Miguel Ojeda
 <ojeda@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Dennis Zhou <dennis@kernel.org>, Tejun Heo
 <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, Michal Marek
 <michal.lkml@markovi.net>,  clang-built-linux@googlegroups.com,
 linux-kbuild@vger.kernel.org,  linux-hardening@vger.kernel.org
Date: Wed, 18 Aug 2021 19:59:23 -0700
In-Reply-To: <YR2+/WBa9eVGn0bp@casper.infradead.org>
References: <20210818050841.2226600-1-keescook@chromium.org>
	 <20210818050841.2226600-3-keescook@chromium.org>
	 <f3e56f56c36b32dc76e174886008a2a1ecf3fefa.camel@perches.com>
	 <YR2lexDd9N0sWxIW@casper.infradead.org>
	 <3a0c55a3fabc57ce9771c93499ef19327f3b8621.camel@perches.com>
	 <YR2+/WBa9eVGn0bp@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0-1
MIME-Version: 1.0
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: 02F8C1124F4
X-Stat-Signature: 8imkyfs9o9hb4zoqqhzpb5qqhrweadgb
X-Spam-Status: No, score=-0.46
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX19Z8/jFNjQzwHhz/5x2YN8pR4bXzCuTFpY=
X-HE-Tag: 1629341964-473567
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.127 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2021-08-19 at 03:16 +0100, Matthew Wilcox wrote:

> kernel-doc is an awful example of perl gone wild.

And checkpatch isn't?


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/37db2c792732ac4b39ee338f0a7fa9f260aa3938.camel%40perches.com.
