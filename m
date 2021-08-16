Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBBVN5OEAMGQECPUP5SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E53B3EDF43
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 23:20:07 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id v25-20020a2e2f190000b029019bb571862dsf6450631ljv.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 14:20:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629148807; cv=pass;
        d=google.com; s=arc-20160816;
        b=GxYVrUY027/Rs4WbZNbZmsM6vUIHvL9QHP5gmkBnvUPFeJiYaEpZjYsjJknkiH11a5
         XDpg8H7fwQH2FDgbvJscsOzlh6viq+kDFnkieCcEHMBvaQ8n1KZl9IZbaC+Y6uLrVlVy
         gdvnDiiTDWDd7WfE1kKobUvgLu59oLzbmROL2bxeomp5gK8pOy6oCWeoUWJTzH5Lhpph
         V852QOTH2C3kzTX9M0+kFYogWLR8u/8y90jg3hbU0SEecK72w6Yz11kfysD+nUCEzerc
         J9XfQuwa8q31B9CqrHG1LYChR4Kb8uDgYx2O3tDEJU+t+7ZWgGMiZ3ShxpRq9o5304sm
         2buQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=0iP21yG4vjs25a6LEWJ5CKmMx7LRUvcIDrEdp0MBHUc=;
        b=yWfYlqKzk35jps/Kss7q+FWI4it12k7hXeAIgBrv4aWDk4Ny/2xOENwpkpiZZ4rEsH
         rWGMDgIE0AGfOqpUL2dp7DghDKoE1fSzxjUqSl01lJyTryq45hSqlMm1RWEa1v/93HZo
         wvHQUWmIXv6LlATTRTosYYIZe1KaGsy3Acl/1PeYg1sPWE2xEEpUfrGbxl75cthxqvCZ
         sudk1xgJhG5ECTGZS1upBM11LqmqHYLvilA6TcCzudXIQpQfs4T3kuSdJDg8d9QA80NG
         XbDZ74G8Pyc5vMSsHUgWQFdmlkEzuHgFOO8y7zA+S/tQpoiEloM9FNkTekzPg7k+0VWz
         3eiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=LsQwxfBZ;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0iP21yG4vjs25a6LEWJ5CKmMx7LRUvcIDrEdp0MBHUc=;
        b=i4O41So3M4OIK0CjmU5b0/+udbxU45v4YWd4HC6cLydIKEAQly0QN20HZq0EuYj3Pn
         aV7p7DPqh2zHNGxF1XZjLYLr93ASMYqUUsppg35U3S2bNsAL5v4KeeKqAvEtktR4VQhm
         rBWbPmgXzYzL1LkQcKd0frjF3TlTzmIHDboHP2oAx7XST3GFft5UBX9UTGB/albFM9qV
         SihXZxadMv2SS0xeueRrm8htE+P8CXfNXFmynZPLCVHyGrmiMx3auFcVO64TtzryB8HH
         J/e4hn6T66BHJ+X6M2VrZFmXwe9uIH7xnwDs32oX8VIL+MUQv0bI35c00D3DLv47z9Ps
         +hnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0iP21yG4vjs25a6LEWJ5CKmMx7LRUvcIDrEdp0MBHUc=;
        b=TF1b/3a6DuRlJ+eZoOACbj0kAX5yEFP+Sua0f5rAtseRgj1IZBE607AR/G+pfd7hFR
         5aD1iT2BZ1Rw2CzFaZ3W91vPxPpPFy4dXXzloThnMFSFYO2VMi3Y/DPuzQvUA1CnDoea
         7kLHS2hLrtv2zMfM0wSUBcKJv/c/LeXXPE3YPZjgqtXO37gLwyRoRQa+mZoQwxFNApai
         xWd39VjOiDvGUnN3GNXAQ85uJlSChDesG+YZPyEjXf6/U7FDGZMn3WX+PTRXBuruPqCr
         m50f8E7XXLBX/2oeeYIpy4bqizAq8Z/KvN4wPJYf0Os0CS8fZYCFtotgbtCygj0Jgs2Q
         Ssvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335OfrAIFrE+Z2TzUY+9FJe6yS02VbGCPAE/0sNjWQJxVUM9j+2
	o139VMTTPDQHHHOOL/BLxms=
X-Google-Smtp-Source: ABdhPJzx8g756SZTlbU3y5vZgd0nXxqtMk8TEYax2abpeTAY3eKeJIOvL+kLvpUlV5J6p+zaX7FeDA==
X-Received: by 2002:a05:6512:304c:: with SMTP id b12mr232022lfb.437.1629148807180;
        Mon, 16 Aug 2021 14:20:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:691e:: with SMTP id e30ls59458lfc.0.gmail; Mon, 16 Aug
 2021 14:20:06 -0700 (PDT)
X-Received: by 2002:a19:6510:: with SMTP id z16mr234365lfb.566.1629148806201;
        Mon, 16 Aug 2021 14:20:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629148806; cv=none;
        d=google.com; s=arc-20160816;
        b=XPBUzno/fgCJ1gws5FZ6AfgzAqPR5ZW/8WOd9S86+VH7jB2F8yCESP8u9CLfpzhqwb
         F6m96SsVGc2ZQ1yNNXLysd5GqvBR5lWZ6cDCADmDa2XoMFIr4Kc26jdG9vYFg78IgoFG
         R2GaFuInSE9I/qI7tOSyf3HtLTa6ldfcSiQoXXUUdTQZckiTm2y+x5kGm3yfxxvnAqxy
         f1X+W+TfZJ5Y0U9UhgwQkBzZIidAyLMQ3GZX1nKQ42Vt8YTUWbm5TgMW0vuda4qlEej/
         7MpFEQoVLvPRE5f66Cr6juDQe2P/qs50i8ZUbqv7SYNnc9xPgyKJe4UbH/3WUXSiv9ip
         KkRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=r6G0aVCgmVmUP8HSXqqU/Wq0OX2gySeKiq/rD3SU+Os=;
        b=Hwacf992xYzQuC1/xYIrHLiD+24Z63GEDbPqjwalmI50eekepqreUH0TdUKbSL9gcE
         x/bX7goImvOsEjqSs4tWTUjIFUwgk4p9ePHbAYQykjl3x+x43qKDEkq8ym/0lnlCpVM6
         fvsPSAFl1OuQCtCDleMTWBGWUf5cGIA/hdlStyj7Eyr0xFHqqwE5t4IZXTCF4HVQFNUa
         7wZshzJhxidN0CjyJeQ+an37BNQI5pJjjNwjaf4NawXkKYWUCw/0ndYXNcC43Xs8UDvt
         ECTU5MlJNvlztaNkOnotXiElx028KtzB0gzT4ABXTgZgUD0dhLNqVQqdLFGMFZuJrdcA
         TPdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=LsQwxfBZ;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id v2si4069ljh.8.2021.08.16.14.20.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 14:20:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 725931FEF1;
	Mon, 16 Aug 2021 21:20:05 +0000 (UTC)
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
	by relay2.suse.de (Postfix) with ESMTP id 5DC08A3B87;
	Mon, 16 Aug 2021 21:20:05 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id 2E314DA72C; Mon, 16 Aug 2021 23:17:08 +0200 (CEST)
Date: Mon, 16 Aug 2021 23:17:08 +0200
From: David Sterba <dsterba@suse.cz>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	terrelln@fb.com
Subject: Re: [PATCH] lib/zstd: Fix bitwise vs logical operators
Message-ID: <20210816211708.GJ5047@suse.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, Nathan Chancellor <nathan@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	terrelln@fb.com
References: <20210815004154.1781834-1-nathan@kernel.org>
 <20210816151450.GF5047@twin.jikos.cz>
 <bbb0a92c-4237-c651-3b8b-84dfaa2a2096@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <bbb0a92c-4237-c651-3b8b-84dfaa2a2096@kernel.org>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=LsQwxfBZ;       dkim=neutral
 (no key) header.i=@suse.cz;       spf=pass (google.com: domain of
 dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
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

On Mon, Aug 16, 2021 at 09:53:53AM -0700, Nathan Chancellor wrote:
> On 8/16/2021 8:14 AM, David Sterba wrote:
> > You should CC Nick Terell for ZSTD patches, added.
> 
> Thanks for the info and adding him, I did not see an entry for lib/zstd/ 
> in MAINTAINERS and there is no consistent person picking up patches 
> according to git.

It's in an intermediate state [1], so far the compression algorithms
have been under the crypto subsystem because it's part of the API, but
regarding ZSTD, it's a bigger beast IMHO deserving an independent git
and merge flow, so I just noticed.

[1] https://lwn.net/ml/linux-kernel/20210430013157.747152-1-nickrterrell@gmail.com/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816211708.GJ5047%40suse.cz.
