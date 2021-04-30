Return-Path: <clang-built-linux+bncBD2NJ5WGSUOBBSWXV6CAMGQEELTPGXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E83C036F962
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 13:36:42 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id v26-20020a2e481a0000b02900bf48f13296sf12309437lja.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 04:36:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619782602; cv=pass;
        d=google.com; s=arc-20160816;
        b=s5nCXmB9pBTmvyKzmftgMmIJ/PzrU8QMA2klYRhsCJPR8DuZVaYqUqFQ1F8krr13ON
         EeSt4hS6Mj3cc1VZuYidVVlIrYj29Adjdc05whC+V0AMxhIDdj0BVBTovT/qHG9sWhWv
         2DlmF7+pupWmoTw1LIpw6GKcMN11bKsTKl1Wpw2+S51NU80aNW+tei3VL3NfSENIwXOf
         mXnos0s6gatwZ99SB45WY5ihJiYU/1jYD7JwQeltQgh79AiqVKC4YW8R64HpjZQnUUQa
         pOgEQs6UBwFaZUw/exebqpL4Xvatl+qS7R0lJuwpMBIWhdz/LjSFeTKihWF/mDo6gQOV
         rzVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=wQ0HKJLSiMgCDtSJEaW07YcVagdKsGkZ97o/VLyb3rQ=;
        b=lYJzTbOz+u8T4mnbJWU4a+GIpL6dksH//Rqpf3gjnrwE7wkNERVdTaWgW3Fv3edLVe
         LFypACS7/TuwzdtQInK906Jehxl9SpQhmqyKXuVUGbT96TScXbdUK2UhP6yJD/YtFm7N
         Ru+k+qcvgRiYMTbxq1K4lrYV0RWfutQEWfA5mmpjWmzCHG811L7iYP/5rPkfXQWxDTlk
         2H6DYkZZ4OV+AgsCTImwUPuumwkqDRY5Rmd2b3OJzuVVG/jRFsBdWMqXrL+kwjC6HFo+
         M45a4MNhgI5fycZVXflc7aKvH2Gjx9LXqmwN160qSTH0rWc7o25mmzqlp8PwZk920M0u
         aAtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wQ0HKJLSiMgCDtSJEaW07YcVagdKsGkZ97o/VLyb3rQ=;
        b=o24x6lyhM0kjWM+BWsYsouKuS/VKtPwxvx9NakMiYLhZXmlhgGh5TJbQhD4tgRbUJV
         Egx+SkA3zuqjQ+T7y9ae6hAVNHNmQWVjg3RRcVdLHZpDKlywFjIRB1tj2V1VjsDps2CO
         Wv2hsKFX41fne5P/Kba5eUZIlWMdbPHCdEf87moseu6rKDg5qTRZM88YRyMIhIcJCdQN
         WhCF2xnKFRDw7pMFGIML5Q5+cSRQg0Pscb59HDUqcerDYLe/ThqfqJ+rXfVlaoTZ2WV9
         Bo/HbdduIBgVWOdaXmfJeOydAfFfZ8Heu2YBk3Fb8VMoEUGfSSiwTf8jWalpvGPF1I4z
         Ih2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wQ0HKJLSiMgCDtSJEaW07YcVagdKsGkZ97o/VLyb3rQ=;
        b=o9crE8aaRo8ZWyMOz49vaZZ5GCTCYy2F0z7eq/vBNeZpBrCYsjd14lc1M4G+ZQKs3E
         WfXC+d+vkFbNWw3UuT6o+5U0p9okM/a+dmJ2H9GUTsu1ubMlT51WbGN0DcpN6Ycc8HI5
         E93RSp+N3CbrWuEli00bWrgPxd+HtlGPvV+rQgnVBx6Sdo6G3NrTRTuMLni8VIJ7LTNs
         kWFVZMU+Xca3g6JeNhYz3NoNaXOAw66Pgee0tS9VjqN3r57dc/7kBNHMuwzSAJR/gCxG
         pjFzMQbpSMoTtjD7mqUUWoJ7vJmF9vbj6ueDzKZ2Ey84ID8gILqFqjhHn9sOx13IKU6i
         FfXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AY+w8XVKmHYeTNWjOa/CedvmV/V/NnjZnKEVSDYABgu1CRmac
	rMGARhpeJOOo0njNE3ZmwZg=
X-Google-Smtp-Source: ABdhPJxwlZfuPFyHmFTFAMECEc+95oDEASd8St1LAq+MLsUSOJmBm0BHgFK/SZWm7aSb3K8lCa2LJQ==
X-Received: by 2002:a05:6512:22c4:: with SMTP id g4mr3007544lfu.501.1619782602498;
        Fri, 30 Apr 2021 04:36:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7807:: with SMTP id t7ls1844698ljc.1.gmail; Fri, 30 Apr
 2021 04:36:41 -0700 (PDT)
X-Received: by 2002:a2e:150a:: with SMTP id s10mr3510567ljd.472.1619782601446;
        Fri, 30 Apr 2021 04:36:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619782601; cv=none;
        d=google.com; s=arc-20160816;
        b=r3II5BYBTa12wIfyw684svmZfH9fGUxa3d+Vbx9wR4gQOreYqvVrr/jtuGJcuTSvld
         MJMZwBVGdkQ0pKLMF7bMO9X4mOp2UQCVFpKqG1KzqA1qGVBXY7R6pFOLDzv+9Y3ot/DS
         NoARdptJIvNXtX6rDIf+p5XviC0JmpqULiz7MrJtA/Q+zVdPFLxEqRRDF86N6wlVr0b5
         88yyAglGLJWt43ajXPsczRHwCVl//ghEmu3hWIXmHG+9RAVYw9aRNUO53HHeKXgi6aBS
         E7i0mGcGHWKX+7zJHUAcso55lU7c/NulJE/CHX1ZMEc02DO8iwkZPpddxr58GjU3owPW
         idjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=AEWjgAENG17mqWZ8ITGpBrAWeJyYHmCwSWuTW5P0wIs=;
        b=hcWGq24CGjdvO28msTQVmUSGWQbR3z4crM44nFdDAtiJi8IB+jhWcT0gULXQYpqPx9
         WMOvUjuihNJZI6kW++JZ1QfPo+s2/UiK5BWhOSftKCLJlZvVoVUfZ6HBq3waaWq4h2BP
         SWEFI12L1+l0BdC2PkaOyiJVnkDNfr2s41UihLWN5I0MXbAA420HxYRghNA8apNfoSlC
         /J20h5tGo65kacefrzyEoSrOcTqq28K80Y+Wkll6HfE9CSDrEL82BsTX2tDbIufKfpNS
         qszYLP02gHXq+E0EnRfgThDP3DOD7LZX5zzZa0mYG4SEG3pkfUa/Ls0wf+di0T0SS8Bp
         WArA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net
Received: from sipsolutions.net (s3.sipsolutions.net. [2a01:4f8:191:4433::2])
        by gmr-mx.google.com with ESMTPS id z33si168819lfu.12.2021.04.30.04.36.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 04:36:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) client-ip=2a01:4f8:191:4433::2;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94)
	(envelope-from <johannes@sipsolutions.net>)
	id 1lcRRg-0023WH-DF; Fri, 30 Apr 2021 13:36:32 +0200
Message-ID: <3a0671bd6a9650fdcdf5cb8414526f6204518774.camel@sipsolutions.net>
Subject: Re: [PATCH] mac80211: Remove redundant assignment to ret
From: Johannes Berg <johannes@sipsolutions.net>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: davem@davemloft.net, kuba@kernel.org, nathan@kernel.org, 
 ndesaulniers@google.com, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org,  linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Date: Fri, 30 Apr 2021 13:36:31 +0200
In-Reply-To: <1619774483-116805-1-git-send-email-yang.lee@linux.alibaba.com>
References: <1619774483-116805-1-git-send-email-yang.lee@linux.alibaba.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-Original-Sender: johannes@sipsolutions.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of johannes@sipsolutions.net
 designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net
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

On Fri, 2021-04-30 at 17:21 +0800, Yang Li wrote:
> Variable 'ret' is set to -ENODEV but this value is never read as it
> is overwritten with a new value later on, hence it is a redundant
> assignment and can be removed.
> 
> Clean up the following clang-analyzer warning:
> 
> net/mac80211/debugfs_netdev.c:60:2: warning: Value stored to 'ret' is
> never read [clang-analyzer-deadcode.DeadStores]

Can you just turn that warning off?

It's really quite pointless to churn the tree for effectively nothing.

johannes

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3a0671bd6a9650fdcdf5cb8414526f6204518774.camel%40sipsolutions.net.
