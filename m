Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMMUTD2QKGQEQACS5NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id A37251B947C
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 00:24:50 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id j92sf8421229qva.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 26 Apr 2020 15:24:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587939889; cv=pass;
        d=google.com; s=arc-20160816;
        b=dEYpt4sWGLpJiaK3Io59cNC0JBMRiB0sH0JnwUSBuGp2FGd8XpUwXfysS01+rqmRNr
         blwK78cP+nboiCD9Gz1N10TfEcZZpnPNCvfudnYYfcsoEOXXjgfLr1BkGowysRlXwS/0
         i5i4amzDwLDwpLEaqa5fw+1rfU2b4E3QBbvYENOdmZE9zj8iWL2LTFhxAy6GEfpCmZhx
         CMnyxMnhTzdc6PjBElJFwwaG9JWQnH6qK69kSmVZyn1fl5IgUu8ttdvN3HW48KnlUZ50
         KypS0T92yx38Ngx7LVBuiGWgtQQ9EGrSuRXGEFrsPeNMomP4OSM1vjtm8b2x57R9WCty
         MtIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=dQ5WjP5bdLGgrRKeeDtN+ioe1AJ3cgDVe8W03gXbHMc=;
        b=N4C+h+MMPj2oHyUhIgM7ouH+zPopyjiew0DaeNPkZNLO9R16oBDFJC+OsYYmkhbInr
         Vtrzo/d9iM8ECTegbzI8LXwNkfwyzfNw7lzUJOK0o9Dv5xQ68kbREYMasgYR9mCtN+0Y
         2C/DkDVhJ3CHws0mIgfX5cCRGK49sO68BxmPQg9rGuG0K04bfrVDWIG1TN5An9wJLRKk
         0fGkpSlab+VpIGrq8KBl3RUZrv4S+YLu7XRRzg71CWhTaCIDJvZz5tXvYqCOzHrY4ves
         Hi8MG5yiQYa2ELUNG9g/SbiNJwyq8U/cG0czvHqS4UxaT19X276tYiDmBy1Y4goKhzOl
         diLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cyO2ULob;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dQ5WjP5bdLGgrRKeeDtN+ioe1AJ3cgDVe8W03gXbHMc=;
        b=J6enDGJhsqPsYs4V3KKi1S0jrUM5Sy9oWv3Tm15bEvMkhPGp/Ss5z6W/a5juDAnK8N
         y/IBL9ja1JLYpCEtgz75CH4krPjyQdzCOddZQKGS2h6+ipBjDs5tw3ojsswPde0Kmoks
         FijmeFoThjAuf8j56rQrxFOcKbc6vm0WFD+FlH+s3LUpDqp62vKFi1aiXye8PQQJjnho
         62jvgBSkw0fsVk+2zlW7VyU32xVit9JbGG+rMA946wOLe3kbVy/clmz8yPOs9mOuI2S8
         zYL9z3zdht31D849zZrjoZ2lob6cUGtX+di+8QKmfTokrs/L8ibAY3tp/D5C5vNfDhtq
         eJqQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dQ5WjP5bdLGgrRKeeDtN+ioe1AJ3cgDVe8W03gXbHMc=;
        b=u08/I07sqgCkgq9CCcZ93kQojAfI21IzKTzXx7jOPnCXx08sSADmGKq86o7ZspHs/S
         H9jtrYcMRyGsWJrSll2YEq7Jwc02gS/xZsY6SgV8ynr/360ZR+bIUIKP8xdQtKBBu1Y8
         ZmkIaaJ+vesXqSZLvSBf/DQm/w462TZIILIJjQvqC/ehyhHIxzzVBMZDNr6MGg1F2QSC
         aWox08wGAxGCOSCcM4M1UWW5f17UjQzMpp7UujiRoVVRC66Ou9zDSv7xtBOzes4i8lgo
         oyU1dfa0/eSLjcukRgsdkp4pXfxpSSXC+ktkt3PZao2Ou9ElcuCQJC7e2oE1UWPyBNTO
         HgPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dQ5WjP5bdLGgrRKeeDtN+ioe1AJ3cgDVe8W03gXbHMc=;
        b=VlvMi7btxn73/6FfoPCpkdeIwJEleV66isp+1nkkpPBkN09AMQro9B3ipIQNmBhkEP
         Cce/+lmV18RZEQVudKaJef9kcWEbion+JUDwBsyiVD0zRW78vj+IfrgAh+278/cP8g05
         lhbDYh3ffS+BGxGHVkRiRA1X7RMZqzw07Yw2I1YW9KbA984WFRo2SaqT0cIXDvBBRCNK
         t7KM5Ku9L+W3Way0Jks1O8vAX5COKXrUoSb1KsXJE/vRtoK1wsBW2jUNJxPDtu03iomt
         MB0/BeviOnRdqNRU+IwdpcuC+1siQbc4Bq/uz/L1RLxKQbkjdOjxQSzMu9nToKqOkAZB
         srkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZfusNjydjQsWs/jFdZ6ACdGEIkU54OXSV64dnsrpxxmsY9yIni
	LDfjpEOQeGu3s/DXUQhSixc=
X-Google-Smtp-Source: APiQypIoXwr+wbauWI473tdYcFu7/F4NxD+/Nsd7NY3RnrZkw9o1h9C1kEP4/1+gZBbNfaIcJAQ+jg==
X-Received: by 2002:a0c:8bc2:: with SMTP id a2mr19217679qvc.246.1587939889494;
        Sun, 26 Apr 2020 15:24:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9d8b:: with SMTP id g133ls8468461qke.11.gmail; Sun, 26
 Apr 2020 15:24:48 -0700 (PDT)
X-Received: by 2002:a37:90b:: with SMTP id 11mr20418249qkj.205.1587939888920;
        Sun, 26 Apr 2020 15:24:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587939888; cv=none;
        d=google.com; s=arc-20160816;
        b=eSBFkCIzF0rrE/bO+42Q0dZZIomYeh3xhaVb+osT9dW/ZvMz+XTOPsb/Mfjk/9xoFY
         4N5FF/bIXNN5WQAMJQ633oOAp+nw6ia3MzFxn6AZS4SfUT0UUcLvXuYdl3ukLHw3WZFd
         ePqOV44rz9SzdZhJMTw/F4DDKBIKQhN0oE08uf/ewKHtgYjAwZLS2GnPrOUJn1nfE3sG
         X0yMgYz7suPJt1oqDqYEaWAyHEITpTtL24LWQw5pDSNn+nvUD+h99KE3Z62w/Tqp2ZLl
         L2OOYJ7HQi9PFkQmUDQnk/ARjecUYbuGWig39j4vk1yGrAENXq1Lt9sOSVwb/FuxyFI/
         H1Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OBLAv3ala95rLSVXUcIkojndaShuLPu2zPwvFjdEly8=;
        b=0WMf8MuO4sEM1AfmZoiuTb9s0/QRLv87tp25vGQwnBJ+7KtrPlyD+NOdzIIbzQBh3d
         g1tRD7J2lPNUFVx0YcXLccQXz8F7Rh1IIzLHtZwN+o5T8YS1V8XScn4CHCPTlDlHcfVJ
         DJlA0xPSYPTXnQmtN+25TFmc160DzQrBZZY3d3Yrhu3DELk6yP4zi7ON/A1Mj1jAPhug
         9cOhUWvyFtXIxfgGtaXiqB+wPANRVHJmF/7gOuN3BaPuc8aW0krUGQVH/BDJqbHACq0E
         iEXoyMswzWW3tfxG/YnXOW7AuE3ga8wIUSX+j2h2W98D3/KpQcwYo0yCtGXBj/fVKjUh
         eIPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cyO2ULob;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id o3si1030262qtm.0.2020.04.26.15.24.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Apr 2020 15:24:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id g14so23002318otg.10
        for <clang-built-linux@googlegroups.com>; Sun, 26 Apr 2020 15:24:48 -0700 (PDT)
X-Received: by 2002:aca:31ce:: with SMTP id x197mr14434706oix.157.1587939886194;
        Sun, 26 Apr 2020 15:24:46 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id h12sm2273441oou.43.2020.04.26.15.24.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 26 Apr 2020 15:24:45 -0700 (PDT)
Date: Sun, 26 Apr 2020 15:24:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: jani.nikula@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] drm/i915: re-disable -Wframe-address
Message-ID: <20200426222444.GA24867@ubuntu-s3-xlarge-x86>
References: <20200426214215.139435-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200426214215.139435-1-ndesaulniers@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cyO2ULob;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Apr 26, 2020 at 02:42:15PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> The top level Makefile disables this warning. When building an
> i386_defconfig with Clang, this warning is triggered a whole bunch via
> includes of headers from perf.
> 
> Link: https://github.com/ClangBuiltLinux/continuous-integration/pull/182
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

This is not technically a clang specific warning but I assume it is only
visible with clang so this location is probably fine.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200426222444.GA24867%40ubuntu-s3-xlarge-x86.
