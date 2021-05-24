Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBGSWCCQMGQESDBLRAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id B99DD38F5A5
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 00:30:29 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id d4-20020a25b5c40000b02904f8e3c8c6c9sf39397086ybg.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 15:30:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621895428; cv=pass;
        d=google.com; s=arc-20160816;
        b=m2o8I/b2fOI2dN7GtJuFpCpmXmzLDYmwDC9AV1YrufynMXJHEsIe5LXkY/gTne1fzV
         CYB3H/AUXlNW9Ce7koU07iv81vOe9HnY/d1mLo5aqzS5ycu9YyAi85L11mTw+IRnDorH
         rsjylgNmJvrIJhT9RJe+Vf95sEdpDU1mdziV2zCN8z5LJHqk2+2P3ECgxKiKXrBkYT2Q
         nuQ6DFgFl21R6WNa1E4ZgLddPUVVQJQuFaHPgiR2Cp9qN1QIKbvaNVtB/ItBI+0d5AdL
         0tq0QF78J/Fd4hexVWigmmE1BxlTNIlAxOTdTNOhXIucZw2H0dcE14IZMK4+0rlCT8UN
         Y3+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LssngIZwp1wop5LXqRfQky29pm0l4d2YG5sDyFv8u/w=;
        b=eUPofEC80CnwYLACm8t41e5HIpzBukCHBTEfW/cTiEFmaIpGiGbpo0D3tlW3IAjcNj
         AiCbvpmFtVvFGFLssregcLWcfmd3HAdmnd2OpDkyTZLh7RzMZsQiUhVgTPQ4bEhs/hsF
         /90zK6iU2jLTjAaSI1yGtqVzNbo+7F3PyFIZNMtuVfxZUqT+PerRoWJ1j5nsmKaTqmMp
         2SA7yFDX0J4nyM54xGHyTuOW7W5Cqj1wBEfYxv8uVZ1CUVYs8J2RrP3vyIr5LqTqepnM
         tO8jrYE7/dXk6pnQoDHZdAjSGc/kd7EI9iWv3j7iRvUZyPtoQp5dzyHfycwGiPjPSVLQ
         Y3xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iS1lBdEO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LssngIZwp1wop5LXqRfQky29pm0l4d2YG5sDyFv8u/w=;
        b=Bef7aPsynpi734k79ZUSQaP6PbBwtQuYBIzHWGhEIx10soNWRm6oZdGLTsksj39IAw
         MvRi7W8H97Ru555Bq0fIdL0vPJZN8uoLfPqDcNuZIsqfabzvvPCw7TQgvRRSKqTd7KzO
         tmReLiuVnHFmYBKYHn2Pm1DA4v51SWHlRtFYI3+UM1Axq5N60em0Hr1cFs8XawAL4Bis
         Q42YN3Ej+jIRcVRFSUqCXVLI2tIAGOHpYANSfMZPF5I2JQ2tSVmDYbIlFe/wWjnY1GDO
         0GUMVVf71irwFukL4PrIBF/WvfKZsg48vmBNNTaySBZW4C7rtB6fbfUtNGdratF/omXZ
         eH/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LssngIZwp1wop5LXqRfQky29pm0l4d2YG5sDyFv8u/w=;
        b=XeQTjDCXEQtVqkgsgOrijjBPHxWd/AIkTrN7qanEjyxcy8HloHmYhV0s/oVbYze6Sk
         o357LJuUICO86kSniOtas7IBhNNv+87u3x5zOVVTVR+XOn5QUEivDa6WuV0KhEbBEI2M
         yMP6WzIlKnInAmf7H9u64U8OQ2GSZKImOwmBg6zfkc8J9gfd/UpSYvonlg017EVUa+NR
         3fMO5Hp/Ic1W+gYrL2/R+A9qJiC8rfcef6p74Sy8hnTUJnXCUR9TPP848c8zNDbcvBRY
         UqhpnGT9Apy1f5+QAAJEM+jrV39nlyEVFkt48GFad861DjP5lc/MbgnvCU6a2cyA3Pcl
         D82Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ceDPiK37OImN7Y7d2JzC+Bd7EjxS4I0xS7DruWe1O64JzhuS2
	YFe7VwSb1uy7VNEEiDnwb40=
X-Google-Smtp-Source: ABdhPJwvENCkyaPTmy1UzYC8d7pe4k1XH8b7aBzbvrVzmrfw04aHV6zr/hh4/AB52TFvFYZIBvMUbA==
X-Received: by 2002:a25:b84a:: with SMTP id b10mr36094399ybm.327.1621895428624;
        Mon, 24 May 2021 15:30:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a045:: with SMTP id x63ls7965882ybh.1.gmail; Mon, 24 May
 2021 15:30:28 -0700 (PDT)
X-Received: by 2002:a25:1ed7:: with SMTP id e206mr41036273ybe.203.1621895428174;
        Mon, 24 May 2021 15:30:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621895428; cv=none;
        d=google.com; s=arc-20160816;
        b=gu2nuBKj0pTzm02Oy5W7LDm8nP3U6sfCrIqDhCkBiQRTJYgwhoV8K48OdOAYxNIRYg
         MsWOZaNae2zFBfO2uBDUPTiFnKT1dqEHX/BZX6xcMzga2cF9vp17j1qcOHtQNXKvPWTG
         NjtGfJT7UqgbdBXDcKWHDfGsWEodJdyD3FzvlxRhP1LZ1ojvF1i4pzeihaQO2Z0IIt0T
         FG9qq+dhWMemJmDlOSEqGEpezscJDGfrs3RVYbD3HTzqi2vT1AYx28WKJb7o9Q+/M8CS
         9mzi1TiS+FIzzDr3TfliSY+X4+/Ta5tGh9JrXLvPFxwLTiNF06FL2AkkW78dAEPYTEVl
         8TLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=h5bxqul8WqbGdR7TLIhFeTTvOZiYlcHzZYUJx+gQS64=;
        b=tiNLVGyqVubU4GRq9t7DC3p/6JLhTHTyUskN0ix4uyGViWbzvfaxH+3ITGTxDaJCTs
         wm1HZZy11aagJK6V/BihNobCLx+dyaKAXWlmiC72pIxwjnKbiTIw+iSAW/18XyjE/vWk
         Wej4hbfBLlJfwhfS3oDni5TKcGsCDrCcGdYTSfEOqgnJtSsJ1TqevOA4+nBxfUWv1BBi
         iZ+gKT8iLlhntxNOYA/RB8kALMM6Gt6AQ0SL1uDhSfm1Vry7cud1+hRVog15fKTDH5dU
         WjVLgumwnS9MZ6bK71mPCP43aMyXYnnCLVPTSpv1SOWidPpOGCNVMniQcwlRpignBsLH
         uzZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iS1lBdEO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id s18si984636ybk.5.2021.05.24.15.30.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 May 2021 15:30:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id c12so10430849pfl.3
        for <clang-built-linux@googlegroups.com>; Mon, 24 May 2021 15:30:28 -0700 (PDT)
X-Received: by 2002:a63:d40d:: with SMTP id a13mr15643488pgh.382.1621895427908;
        Mon, 24 May 2021 15:30:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a12sm12571934pfg.102.2021.05.24.15.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 15:30:27 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com,
	Candle Sun <candlesea@gmail.com>,
	linux-kbuild@vger.kernel.org,
	Fangrui Song <maskray@google.com>,
	linux-kernel@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>,
	Sami Tolvanen <samitolvanen@google.com>,
	Nathan Chancellor <nathan@kernel.org>
Subject: Re: [PATCH] Makefile: LTO: have linker check -Wframe-larger-than
Date: Mon, 24 May 2021 15:29:18 -0700
Message-Id: <162189535579.438777.12852956339898107122.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210312010942.1546679-1-ndesaulniers@google.com>
References: <20210312010942.1546679-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=iS1lBdEO;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, 11 Mar 2021 17:09:41 -0800, Nick Desaulniers wrote:
> -Wframe-larger-than= requires stack frame information, which the
> frontend cannot provide. This diagnostic is emitted late during
> compilation once stack frame size is available.
> 
> When building with LTO, the frontend simply lowers C to LLVM IR and does
> not have stack frame information, so it cannot emit this diagnostic.
> When the linker drives LTO, it restarts optimizations and lowers LLVM IR
> to object code. At that point, it has stack frame information but
> doesn't know to check for a specific max stack frame size.
> 
> [...]

Applied to for-linus/clang/features, thanks! This should be in -next
tomorrow and I'll send it on for -rc4 at the end of the week.

[1/1] Makefile: LTO: have linker check -Wframe-larger-than
      https://git.kernel.org/kees/c/24845dcb170e

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162189535579.438777.12852956339898107122.b4-ty%40chromium.org.
