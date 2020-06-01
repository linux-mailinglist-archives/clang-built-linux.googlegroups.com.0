Return-Path: <clang-built-linux+bncBC6LFE5SYELBBOFH233AKGQEZD4E3AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 397B31EB25B
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 01:48:09 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id t5sf671059vkk.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Jun 2020 16:48:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591055288; cv=pass;
        d=google.com; s=arc-20160816;
        b=DXnLDu8EYc2Suc7Oz0BEZ/ABqN7h/hXi3T5nYNwdAG2ZczFXh51LbfZefK9cZM/zLh
         tsPtPwHU5Rx/TjpEJTNZr0LCoU8qcU1fOMFxx1ZKAf0PSpdCDUs5PZSM/O8L2PziUiAo
         mQYgqt60fvxFagoi4TOzIMIOqW/FhrnjHUXknIEvfO0aitc3PGA0NPVR1FWFvXpbLkxy
         INN8v0pi8vq/CJPGgvX8PKimKwme5hFO3WSK4r+RrRpJxeLv07ZcEYrUIkQzt8/r70Nu
         DbEzmv3RD1cd3ngJ2aM+K83KdfkeLujkG7kxlRsaKHaN4HnS//rn7+B/nO7bFr0UveoP
         DFeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Solp6LBwgM8VWBFPybxuEl5g4/blU3f9SLxR8Jv3Ni0=;
        b=NmJDF7GH7Q4tnXfyyaZW9JpCCFcZatdF/9BFytd3z71TJJW8apAOqc5Txt6BALnoqq
         FgYJHDJJ0qTlVfDDPwyEjMoDwEnIWuEvFLNexMvZY7QJtCwvlyh0ABLuuNjcYlydPFUk
         Lw+Pel4fO6NT30AN+5g5v37J9kUVI3fqpT5DKwx5yYkHYpbiv7BYAvf7LkfjcUljKSDI
         VpALJoLS07b84t3M2BgYuPaw9Kde7Jc6j7NYfnOcEYTj+sDG8U7fGB2BjSptOchPhquw
         Rm/ga4S3tuYJZ+feLuKKqhw90CaD9ynUbmtcE4OIqmwqwPYP/RjrkHIXmGEoJ3hmEgZK
         3Txw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tJFt7Gd4;
       spf=pass (google.com: domain of inglorion@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=inglorion@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Solp6LBwgM8VWBFPybxuEl5g4/blU3f9SLxR8Jv3Ni0=;
        b=PooN2D3vOxbTLzYavh5ZnSdeaFTwPFQ4EGnMVPk6J9M+3rRCZP+3dhkWsc3AuVe/bS
         MqRT/yriU5oG6YRbJW2s+0OBDNkllQ00WW8BiYU8T36iUamLR+NTRAZpix8ehNpvxNmi
         7wg+sltt5DQHrl5QOO5zJ45eliqSBLCJ5MBYIiSaCGXBbQvIFmcUmLbBetsnFcVEQlzq
         xjqamnTawJmHyXU6yZKadvz2b1KIG9xElJgtBnK3hvd4cN6YZV5eKPGICPY+0e2C+0BR
         NRs7nfQaTh2B2TonXkwn85YaFwoSo3mkl9doJefbwaOOGGFV/mjJabqFhxO/mlzBb2vd
         zyqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Solp6LBwgM8VWBFPybxuEl5g4/blU3f9SLxR8Jv3Ni0=;
        b=as5Nc9vZWnimpCgR3ZEvspIARvm7qWo/RaCGZK8mzIDBo67DjFuFNDwwmdejRby2nZ
         oSF61R0WAUaXtuMi80yWnPGc1y1XJmq3KK73CwRBhEvD5Pn+3XlRO6yAH026K9vMPsbU
         o+FGE7QnTGJGdB66r6VPys/VDycrsn81IfeuHYN+60LJaS/DQPcyhVlLebmD4dZnpNmS
         38SvuhVD+QuNlo53GMJOmgLS5skKAmz/WIn5LLDMolJjWD0ls9UF5j/Shw63XEhKeolK
         0OSJIEeM+W/0YCOAmI00i//8l18pZf9XrvuR2WAVfADXOcrXmuPV5tJJ6/2vr30xJcff
         sjKQ==
X-Gm-Message-State: AOAM533rtVWwTsHkC+Tc2HxBNfqSZ1XMEoUSxxehm5yRYAQgqtpLADyO
	4cOjUCwAS+s/wBKDK4Kc/TM=
X-Google-Smtp-Source: ABdhPJyZjuVrny9pLNy8OG722iSVSA4LDCIqsTtzeS5wYKudGaqDzdi8OVH6Bt+bxZUhMev5GYvLjg==
X-Received: by 2002:a67:d10c:: with SMTP id u12mr16604231vsi.218.1591055288138;
        Mon, 01 Jun 2020 16:48:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3092:: with SMTP id w140ls1680288vsw.1.gmail; Mon, 01
 Jun 2020 16:48:07 -0700 (PDT)
X-Received: by 2002:a67:fd75:: with SMTP id h21mr13598779vsa.91.1591055287751;
        Mon, 01 Jun 2020 16:48:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591055287; cv=none;
        d=google.com; s=arc-20160816;
        b=EDRFGeq39LhpTFiG/bNUxj2eQkGL0W+/oKWW1SIsBOP34RpS/yHQFi8lBGk83Vup9a
         KISe6aCMifDGLzp2IWiuz1GsDLH580yELusiVqA4q+S+5mP3SHZt6XgxSS3q2JEJbsaL
         gzZ+EDYfVEplvt2/HBQ+nsiF7exWE0LTHW9TAA8RFPb/fu0XgtlVAsUig8mGzdk6KxB7
         UgxlHJgcCd7cLTpd+1e5zRX1J2TxUlik9s5fAB54j0DJEUdz9p7N1cNm8NAcp5iYE9CT
         PIkpb9JiaXnrp9G4KP8dUCbk5p5Ml0zsouJPRMSQvnxNRPbVLlt8+Zs/5Vma3LTqj8QB
         jtEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=JTWqI6Ca3DpJmYc/uc3TGZVuxw1TynWGO/pp7MJYhsY=;
        b=GYviAbrd5L4fDbPC4Umtqk0QKs6s0FVUKOB3S50uc6pEgT3nu6GYMEHFV+3RuHEDJi
         yNQvI4REntxxh/MllNWu03ReWO2/1YZtIgRoMpc+XnR0XkC6WfuMkn66gfuArbF/Khc5
         VT3HcQS8YIVBg5HRpO7Ou0gLhCCvRUIXX8fp2+eQrtqWNfT6W9kfQVPuMHKLKB+HjGO4
         2dJ/MlYcWv+vQ0m7IXJH8r4sGs3ORUXqqv6HUCkUSWMdHBmqLw4YxW4XKE9bXj4ykF0X
         KS5GA21eC+ZUPBZOu14t/mo30aeAAcfVP7w9CwYrE4T/y1Gx5ylwmbHu8ZwCAfa+YpNY
         mQFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tJFt7Gd4;
       spf=pass (google.com: domain of inglorion@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=inglorion@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id y7si65215vko.5.2020.06.01.16.48.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jun 2020 16:48:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of inglorion@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id w20so4207781pga.6
        for <clang-built-linux@googlegroups.com>; Mon, 01 Jun 2020 16:48:07 -0700 (PDT)
X-Received: by 2002:a62:4e91:: with SMTP id c139mr3893637pfb.18.1591055286443;
        Mon, 01 Jun 2020 16:48:06 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:db56:ecca:5ade:2f85])
        by smtp.gmail.com with ESMTPSA id q25sm448943pff.69.2020.06.01.16.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2020 16:48:05 -0700 (PDT)
Date: Mon, 1 Jun 2020 16:47:56 -0700
From: "'Bob Haarman' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Andi Kleen <ak@linux.intel.com>, Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>, stable@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Alistair Delva <adelva@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Kyung Min Park <kyung.min.park@intel.com>,
	afzal mohammed <afzal.mohd.ma@gmail.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Kees Cook <keescook@chromium.org>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Dave Hansen <dave.hansen@intel.com>, Baoquan He <bhe@redhat.com>,
	Thomas Lendacky <Thomas.Lendacky@amd.com>,
	Ross Zwisler <zwisler@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Dmitry Safonov <0x7f454c46@gmail.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86_64: fix jiffies ODR violation
Message-ID: <20200601234756.GA10511@google.com>
References: <20200515180544.59824-1-inglorion@google.com>
 <20200519031742.GB499505@tassilo.jf.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200519031742.GB499505@tassilo.jf.intel.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000353e8c05a70e6d74"
X-Original-Sender: inglorion@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tJFt7Gd4;       spf=pass
 (google.com: domain of inglorion@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=inglorion@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bob Haarman <inglorion@google.com>
Reply-To: Bob Haarman <inglorion@google.com>
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

--000000000000353e8c05a70e6d74
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Mon, May 18, 2020 at 08:17:42PM -0700, Andi Kleen wrote:
> > Instead, we can avoid the ODR violation by matching other arch's by
> > defining jiffies only by linker script.  For -fno-semantic-interposition
> > + Full LTO, there is no longer a global definition of jiffies for the
> > compiler to produce a local symbol which the linker script won't ensure
> > aliases to jiffies_64.
> 
> I guess it was an historical accident.
> 
> Reviewed-by: Andi Kleen <ak@linux.intel.com>

Thank you, Andi. Do any other reviewers have comments?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200601234756.GA10511%40google.com.

--000000000000353e8c05a70e6d74
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIPDAYJKoZIhvcNAQcCoIIO/TCCDvkCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ggxvMIIEkjCCA3qgAwIBAgINAewckktV4F6Q7sAtGDANBgkqhkiG9w0BAQsFADBMMSAwHgYDVQQL
ExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UEAxMK
R2xvYmFsU2lnbjAeFw0xODA2MjAwMDAwMDBaFw0yODA2MjAwMDAwMDBaMEsxCzAJBgNVBAYTAkJF
MRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSEwHwYDVQQDExhHbG9iYWxTaWduIFNNSU1FIENB
IDIwMTgwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCUeobu8FdB5oJg6Fz6SFf8YsPI
dNcq4rBSiSDAwqMNYbeTpRrINMBdWuPqVWaBX7WHYMsKQwCOvAF1b7rkD+ROo+CCTJo76EAY25Pp
jt7TYP/PxoLesLQ+Ld088+BeyZg9pQaf0VK4tn23fOCWbFWoM8hdnF86Mqn6xB6nLsxJcz4CUGJG
qAhC3iedFiCfZfsIp2RNyiUhzPAqalkrtD0bZQvCgi5aSNJseNyCysS1yA58OuxEyn2e9itZJE+O
sUeD8VFgz+nAYI5r/dmFEXu5d9npLvTTrSJjrEmw2/ynKn6r6ONueZnCfo6uLmP1SSglhI/SN7dy
L1rKUCU7R1MjAgMBAAGjggFyMIIBbjAOBgNVHQ8BAf8EBAMCAYYwJwYDVR0lBCAwHgYIKwYBBQUH
AwIGCCsGAQUFBwMEBggrBgEFBQcDCTASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQWBBRMtwWJ
1lPNI0Ci6A94GuRtXEzs0jAfBgNVHSMEGDAWgBSP8Et/qC5FJK5NUPpjmove4t0bvDA+BggrBgEF
BQcBAQQyMDAwLgYIKwYBBQUHMAGGImh0dHA6Ly9vY3NwMi5nbG9iYWxzaWduLmNvbS9yb290cjMw
NgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9yb290LXIzLmNybDBn
BgNVHSAEYDBeMAsGCSsGAQQBoDIBKDAMBgorBgEEAaAyASgKMEEGCSsGAQQBoDIBXzA0MDIGCCsG
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
BggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wUQYIKwYB
BQUHAQEERTBDMEEGCCsGAQUFBzAChjVodHRwOi8vc2VjdXJlLmdsb2JhbHNpZ24uY29tL2NhY2Vy
dC9nc3NtaW1lY2EyMDE4LmNydDAfBgNVHSMEGDAWgBRMtwWJ1lPNI0Ci6A94GuRtXEzs0jA/BgNV
HR8EODA2MDSgMqAwhi5odHRwOi8vY3JsLmdsb2JhbHNpZ24uY29tL2NhL2dzc21pbWVjYTIwMTgu
Y3JsMA0GCSqGSIb3DQEBCwUAA4IBAQCB8hJrRbW4aoR++6DS51XVSm7Xlb7bz7Ow5WPLVOiuVI3d
tq/OTAbsdReypY8Dw3+/FXLKa3q9BVtaCuHPXRMtBW1YdR3Xt9eH3ri1dP1nfzzF4iRwmTMrzG70
tLB0Rm+aqZtfoF1zt/ZvaQW+pfbELAh2TazUSguVRFZudpOzZsCsA/uL/gVMvrZc+LGG3M81s2+S
Lpt2aAXO5sEMEti+CjIKRSwIC3PGkRALu1O3Y+RxuPrdcCc6zdjqR2Ge/KXgRyvHlgwKpyJRSozt
qM7RsyNchlszR607DTfv4AkCuDGFp+2/lu1Pr90nos1lYQB7EM7bT/hvrnXK4veLjrKiMYICYTCC
Al0CAQEwXzBLMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTEhMB8GA1UE
AxMYR2xvYmFsU2lnbiBTTUlNRSBDQSAyMDE4AhABaFRvfPg6SNdBt9YyDOljMA0GCWCGSAFlAwQC
AQUAoIHUMC8GCSqGSIb3DQEJBDEiBCAR5zY2qeGzyfkxNcxQccymZjtr5i46b2UXF+M9GApZujAY
BgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMDA2MDEyMzQ4MDdaMGkG
CSqGSIb3DQEJDzFcMFowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBFjALBglghkgBZQMEAQIwCgYI
KoZIhvcNAwcwCwYJKoZIhvcNAQEKMAsGCSqGSIb3DQEBBzALBglghkgBZQMEAgEwDQYJKoZIhvcN
AQEBBQAEggEAljxbW/hC2qVJYvLocvfUSOYTdydynYEhDc1FGbDoYs8DraFZbcLOWaewCkNaj4Y8
+d6t6KLofi2+j/lk6M6nF+mPQpIujFk+q41VT3yfEG6dGE/cX6koYZtyV4v3kIttSEJFsHChLTGL
1YwnQ433HsQYhoE9ZI2/NI2MGTKyc0ECVqwHkM/mgpGDhPQsqwT6qBGS8XN1LmRb2dMA+JDFaa79
mIX//jr2fGcrvoyhOzSrtr88jZfQ/ktCtHi7+Tc1+atKHQl/PmWpBItQQ0nFBmqpB/nrMIz+FPMN
ErBdATFuCxdZKq4dBMmppY86a3Be0zgGMW0+jpw6u7+MOaeGMg==
--000000000000353e8c05a70e6d74--
