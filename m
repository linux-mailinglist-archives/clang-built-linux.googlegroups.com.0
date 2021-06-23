Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNOEZWDAMGQEV7EHGUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id C341A3B1EBC
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 18:32:54 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id r5-20020a635d050000b0290220f78694c8sf1782819pgb.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 09:32:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624465973; cv=pass;
        d=google.com; s=arc-20160816;
        b=zZB/WGqVLF4K+O0GrXIfWukWE+FBbFu2odBoPvCvF2yoGx4B2mr2vlsL1v2MfINKD+
         nbF1X+/c+5HLVGXgH9R1k9oVLyoKlTeogyX7jeod8bkDWvRizJj6vn21+JlWHh6Em3c6
         jAmgz5HqRFqby9LOSD9ARCmPRgpIl/3Dv/MChKm74L6gKniSlMoYGkNcXHWsT5nFZB0K
         xxSE8JKmghd/eAsQBglHJRpnoFL6A/LrZSdUVdpQ9nBRqSGnex9pCK8amV3zMbTG8LOz
         EQSnowTvj8mVV92viSt95JiUqrZgOhRri3TfCfgG6pmSY5xNRID26TpM5bpd0NIVCZST
         JfPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=D84h7wV8gk6i95fb2jYlqrLvHYdcN9xQtYVRzwp6+Qw=;
        b=TbGUK52kZ70fMl9vsyFDp7IAwziiVAut0s+eeppcBihDFRWZR+5Z0EEiOkdkG7wiYE
         1DR6qGBXVyVDQ7lkVK8V/0qxhaCPocbAn0siGVI3aXKIkaLq2rUD84uoHOL7ZqoYK98F
         iX33BYaDrtc/VBkbWVCwAeR2ypf29s3jOlq1h4mvpvrwVCV7S1OztbOcUn2C7kL9/yJM
         FPviV4BBfXn9sXDNMknGruRRtO0jKPdXUvL7XB0SjE8hVYiCxvB3FBfKOsQqKxSybcNf
         ad4hrtILGvFSum7UDu34PTjmTDGlnorUFFvdxNnqbFhIeztBoNjlmM4h3XEig7kxVrdU
         ptgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WinEuGU6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D84h7wV8gk6i95fb2jYlqrLvHYdcN9xQtYVRzwp6+Qw=;
        b=PE38ZwXa06i0REgw03E1iy9YASVPryyrWOGl7s4Z9VUrpk1L28nMtAbgezLQyr4XYo
         Igjt1PJoA6s9EElLqhW/CQZHTaNc3ov0SavB/Y/LUumdIHaxkdZ5P38MQpotd5efm/dn
         QZahtyYPr+RmWnc5d0vQr/Z2f0OIP4vcEI9vIZHZVWoEyOZ6LTj+RAU6GnE3yagj5wLB
         isN4Mk0VIT+QZCL3EmiZhCcGgS4zaSPyCiB/QtW7Mh2iOSL0Sf6MTH3heWZy45zYPB/J
         kXL2fEbASqz8WkFxSUDqrjVCzidUnJtJo6WohwAzr8m2Q04C6YJ5P8y3OpZ3lX53ZLqF
         c6eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D84h7wV8gk6i95fb2jYlqrLvHYdcN9xQtYVRzwp6+Qw=;
        b=TCb+LYYEpr++iOtYI2NzN6me5MC2DTcKfpCNKliel2V9uCuz5RTy1Ci0TJNVMZM++i
         bPBgKVpAhUpCf9YKsPaOXUIYS4cECE/tXtmkaJBzUTpfHDNE6eQaQm0FboulDNbGJT/e
         8u8N6c9XS23moW80OrUva776jxmRqdlBP9qvorN6e+3yMCuHkWBrAM7OAMIQ+LHfKzQP
         TTKAazdDEBDK7WK0TfhSECdurhi9GmP7338UIxtZ85M3kb9rmp8rGw7GOjKuLPT4Pl+C
         LAt+LnNlWYfbzsf/EaxC5QpT0ZUnmHnL6MZ39X/T7sGabH1p5R2hEp6c1bKnZECv7Qc3
         t8Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307vuzs1L9c9cv5crS1td6D0wTngQO+Qtpl/hMEHsLddrSC5Hyi
	dP8PI6bjnTJWN2lODg0Vwxo=
X-Google-Smtp-Source: ABdhPJygLFubV3lHykBmK35P3KZ6YgypzUKvrrkAdtV7t/FsGGi9z/7wah8sGZS5i7eC46AkXfSVTg==
X-Received: by 2002:a62:b50b:0:b029:2fc:db53:a56a with SMTP id y11-20020a62b50b0000b02902fcdb53a56amr618552pfe.30.1624465973341;
        Wed, 23 Jun 2021 09:32:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b98:: with SMTP id w24ls1469657pll.0.gmail; Wed, 23
 Jun 2021 09:32:52 -0700 (PDT)
X-Received: by 2002:a17:90a:e00b:: with SMTP id u11mr10864745pjy.53.1624465972728;
        Wed, 23 Jun 2021 09:32:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624465972; cv=none;
        d=google.com; s=arc-20160816;
        b=k7A8aSGAZd6pVE25AoSGr0GMX1eF6IPBM5fTRpXIBEdcKi/NRio/OEoGJzlsk3ez0B
         7gZE+QpUnWWjAAFcgrB3ML+kOJIGjxoYyfb9ZYjpDKELhTDXTezU+xp9UdA3++pOu0t+
         dfjIfpkA5g0N41YajXxzBLhpc1RkxSjsT+KYwMmtVAzAWwD4KiRLzoC76Irw3nRM1h7X
         24tIAYRDFqei+w6kSnLf12Vd1ImQhRPxarmgyMqaZLKsJIc+dgayLU8WJIjpU1h9IwJR
         5RqeLy/6xuXpfoyCvaoPOtYTaMLBxvMOvinwwdnrpTGpaAWZ6aXm8lgpWYIxMVs3RMr0
         Z6Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8WDPpTsAABrndh4h0TsCOGWmpZse3T18rg9azPYg3VA=;
        b=chEM+5Ah5GT/1vQ2dlMiEWtrcP5E2pZw/YdAxfVcrvCfC6pn6uL5JBn+Zltblx+dCK
         ppfG8RqoxTafBK6XCKdj3uHGFeIjVPpDnnYlv+PuPaecd/kYJHAhXGZ0UJGT1skxSfia
         yjuRRZT4N7/CM02M1Da8N91phgzEHh1NVwFRFLEcvUsrXPdFtDJD4kG/yXNcjzsx48qP
         tvhWFllljgjicMzwBXqqJDcTGLQ8h5Oq5fSoQpM4dRipOw50niLLljlY+zsoehowxjtu
         qIvb5ZDXTycF8IZP6I9vNFRiy24iyoale73pCxVV8KGGqqUvwoUGpFneXaW8a3yDchVH
         +rPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WinEuGU6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id y205si50845pfc.6.2021.06.23.09.32.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jun 2021 09:32:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id bb20so1802321pjb.3
        for <clang-built-linux@googlegroups.com>; Wed, 23 Jun 2021 09:32:52 -0700 (PDT)
X-Received: by 2002:a17:90a:de84:: with SMTP id n4mr6082030pjv.62.1624465972559;
        Wed, 23 Jun 2021 09:32:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z23sm175748pjn.2.2021.06.23.09.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jun 2021 09:32:52 -0700 (PDT)
Date: Wed, 23 Jun 2021 09:32:51 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
	linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] ACPI: bgrt: Use sysfs_emit
Message-ID: <202106230932.96179173E@keescook>
References: <20210623013802.1904951-1-nathan@kernel.org>
 <20210623013802.1904951-2-nathan@kernel.org>
 <202106222250.7BD80A12FF@keescook>
 <a155e3ee-69aa-408d-208b-06144cf6cf8f@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a155e3ee-69aa-408d-208b-06144cf6cf8f@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=WinEuGU6;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f
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

On Wed, Jun 23, 2021 at 09:28:55AM -0700, Nathan Chancellor wrote:
> On 6/22/2021 10:51 PM, Kees Cook wrote:
> > On Tue, Jun 22, 2021 at 06:38:02PM -0700, Nathan Chancellor wrote:
> > > sysfs_emit is preferred to snprintf for emitting values after
> > > commit 2efc459d06f1 ("sysfs: Add sysfs_emit and sysfs_emit_at to format
> > > sysfs output").
> > > 
> > > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > 
> > Perhaps just squash this into patch 1? Looks good otherwise!
> > 
> 
> I thought about it but sysfs_emit is a relatively new API and the previous
> change may want to be backported but I do not have a strong opinion so I can
> squash it if Rafael or Len feel strongly :)

Fair enough. :) I figured since CFI is even newer than sysfs_emit(), it
didn't make sense to backport. Regardless:

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106230932.96179173E%40keescook.
